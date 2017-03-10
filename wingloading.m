function [w_s,M_to,M_clmb,M_cr,M_ltr]=wingloading(in)
[T, a, P, rho] = atmosisa([0 in.alt.cr/2 in.alt.cr in.alt.ltr]);
rho = convdensity(rho,'kg/m^3','slug/ft^3');
a=convvel(a,'m/s','kts');
M_to=in.v.to/a(1);
M_clmb=in.v.clmb/a(2);
M_cr=in.v.cr/a(3);
M_ltr=in.v.ltr/a(4);
%calculate required wing loading 
%stall
WS.stall=0.5*rho(1)*(in.v.st*1.689)^2*in.Clmax;
% takeoff
Clto=in.Clmax*(in.v.st/in.v.to)^2;
WS.to=in.tkofpar*in.hp_w0*Clto;
%Climb
G= in.roc/60/(in.v.clmb*1.689);%climb gradient
T_W=550*in.prp_ef*in.hp_w0/(in.v.clmb*1.689);%thrust to weight ratio, 
q_clmb=0.5*rho(2)*(in.v.clmb*1.689)^2;
WS.clmb=q_clmb*pi*in.wing.ar*in.oswal*(T_W-G+((T_W-G)^2-4*in.Cd0/pi/in.oswal/in.wing.ar)^0.5)/2;
%Cruise
q_cr=0.5*rho(3)*(in.v.cr*1.689)^2;
WS.cru=q_cr*(pi*in.wing.ar*in.oswal*in.Cd0)^0.5;
%Loiter
q_ltr=0.5*rho(4)*(in.v.ltr*1.689)^2;
WS.ltr=q_ltr*(3*pi*in.wing.ar*in.Cd0)^0.5;

w_s=min([WS.stall,WS.to,WS.clmb,WS.cru,WS.ltr]);
