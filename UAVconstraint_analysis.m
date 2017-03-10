function UAVconstraint_analysis(in,o)
dvdt = 6; %Accleration [ft/s^2]
n = 2; %load factor of the aircraft
n_at_max_speed = 1.5;
sto = 500; %takeoff distance constraint (in ft)
sland = 250; %landing distance constraint (in ft)
takeoffmiu = 0.03; % friction for takeoff %Assumption taken from 251 textbook page 250
landingmiu = 0.50; % Friction for landing %Assumption taken from 251 textbook page 251
g= 32.2;
%%
CDo_to = interp1(o.aero_dc{1}.alpha,o.aero_dc{1}.cd(:,1,1),0); % take off drag coefficient
CDo = CDo_to; % minimum drag coefficient
CLmax_to = max(o.aero_dc{1}.cl(:,1,1))+0.15; %maximum take-off coefficient of lift
CLmax = max(o.aero_dc{1}.cl(:,1,1)); %maximum coefficient of lift
%% Main
[T, a, P, rho] = atmosisa(in.alt.cr);
density = convdensity(rho,'kg/m^3','slug/ft^3');
q = 0.5*(density)*(in.v.cr*1.69^2);
[T0, a0, P0, rho0] = atmosisa(0);
density0 = convdensity(rho0,'kg/m^3','slug/ft^3');
alpha = density/density0;
beta = 0.8; %Weight fraction for specific constrain %Assumption that the weight
% fraction for the aircraft during the turn is 0.8
%%
%Turn Constraints
wingloading = linspace(0.1,20);
turnconstraint =q*CDo./(alpha.*beta.*wingloading)+beta.*wingloading.*(n^2/(q*pi*in.wing.ar*in.oswal));
pwlturnconstraint = in.v.cr*1.69.*turnconstraint./(550*in.prp_ef);
q_max=0.5*density*in.v.max*1.69^2;
h_turn =q_max*CDo./(alpha.*wingloading)+wingloading.*(n_at_max_speed^2/(q_max*pi*in.wing.ar*in.oswal));
plt_h_turn= in.v.max*1.69*h_turn./(550*in.prp_ef);
%Take off Constraint
V_stall=(wingloading.*2./(density0*CLmax_to)).^0.5; %page 96
V_to=1.2.*V_stall;
beta0=1;
alpha0=1.1;
% q_to=0.5.*density0.*(0.7.*V_to).^2;
takeoff =(((1.44*beta0^2)/(alpha0*density0*CLmax*g*sto))*wingloading)+((CDo_to*0.7)/(beta0*CLmax))+takeoffmiu; %page 252 of 251 text
pwltakeoff = takeoff.*0.7.*V_to./(550*in.prp_ef);
%Steady level Flight Constraint p.516
K=1/(pi*in.wing.ar*in.oswal);
ss_flight_TW=q.*CDo./(wingloading)+wingloading.*(K./q);
plt_ss_flight= in.v.cr*1.69*ss_flight_TW./(550*in.prp_ef);
%Max Speed Steady level Flight Constraint p.516
K=1/(pi*in.wing.ar*in.oswal);
ss_flight_TW=q_max.*CDo./(wingloading)+wingloading.*(K./q_max);
plt_ss_flight_max= in.v.max*1.69*ss_flight_TW./(550*in.prp_ef);
% Landing Constrant
beta_land = 0.8;
landing = (sland*density0*CLmax_to*g*landingmiu)/(1.69*beta_land);
wingloading_land = [landing landing];
% Acceleration Constraint
acc=(beta/alpha)*((q/beta)*(CDo./wingloading+K*(beta/q)^2*(wingloading))+dvdt/g);
plt_acc=in.v.cr*1.69*acc./(550*in.prp_ef);
figure (1)
plot(wingloading,pwlturnconstraint,...
    wingloading,plt_h_turn,wingloading,pwltakeoff, ...
    wingloading,plt_ss_flight,...
    wingloading,plt_ss_flight_max,wingloading,plt_acc, wingloading_land,[0 1])
%plot([wingloading(1) wingloading(1000)],[pwl_Vmax pwl_Vmax],'m')
xlabel('Wing Loading [lb/ft^2]');
ylabel('Power Loading [hp/lb]');
title('Power Loading Constraint Analysis')
%legend (['Loiter Turn Constraint with Load Factor =',num2str(n)],['Max Speed
% Turn Constraint with Load Factor =',num2str(n_at_max_speed)],['Takeoff
% constraint for takeoff distance=',num2str(sto),'ft'],['Max Speed Powerloading
% Requirement for Vmax=',num2str(in.v.max*1.69),'ft/s'])
legend (['Loiter Turn Constraint with Load Factor =',num2str(n)],...
    ['Max Speed Turn Constraint with Load Factor =',num2str(n_at_max_speed)],...
    ['Takeoff constraint for takeoff distance=',num2str(sto),'ft'],...
    ['Loiter Steady Flight Constraint for ',num2str(in.v.cr*1.69),' ft/s'],...
    ['Max Speed Steady Flight Constraint for ',num2str(in.v.max*1.69),' ft/s'],...
    ['Acceleration Constraint for ',num2str(dvdt),' ft/s^2'], ...
    ['Landing Constraint for Landing distance = ',num2str(sland),' ft'])
tolerance = 0.0005;
for n=1:100
x1=abs(pwlturnconstraint(n)-plt_h_turn(n))/2;
x2=abs(plt_h_turn(n)-pwltakeoff(n))/2;
x3=abs(pwltakeoff(n)-pwlturnconstraint(n))/2;
if x1<=tolerance
Powerloading(1) = (pwlturnconstraint(n)+pwlturnconstraint(n+1))/2;
y(1)=n;
elseif x2<=tolerance
Powerloading(2) = (plt_h_turn(n)+plt_h_turn(n+1))/2;
y(2)=n;
elseif x3<=tolerance
Powerloading(3) = (pwltakeoff(n)+pwltakeoff(n+1))/2;
y(3)=n;
end
end
if Powerloading(1)>=Powerloading(2)% && Powerloading(1)>=Powerloading(3)
Wingloading = wingloading(y(1))
Powerloading = Powerloading(1)
elseif Powerloading(2)>=Powerloading(1)% && Powerloading(2)>=Powerloading(3)
Wingloading = wingloading(y(2))
Powerloading = Powerloading(2)
%elseif Powerloading(3)>=Powerloading(1) && Powerloading(3)>=Powerloading(2)
% Wingloading = wingloading(y(3))
% Powerloading = Powerloading(3)
else
disp 'ERROR in finding design point (intersection) in figure 1'
end
Wingloading=5.98
Powerloading=0.0525
[W0]=size_aircraft_451_prop (in.w.pay, in.range, in.endur, in.wing.ar, Powerloading, Wingloading,1);
Vn([-0.6 CLmax], [-1.5 2], in.v.max*1.69, 69, W0);
%% Carpet Plots
in.wing.ar= [in.wing.ar-1 in.wing.ar in.wing.ar+1 in.wing.ar+2];
c=2;
step=11;
Powerloading_range = Powerloading-0.02:0.004:Powerloading+0.02;
Wingloading_range = Wingloading-2:0.4:Wingloading+2;
W0=[];
figure (4)
title 'Carpet plot with constrants';
