function [Sw,bw,cr_w,ct_w,cmac_w,ymac_w,sweep_w_LE,wing_apexX,wing_apexZ,...
    ht_apexX,ht_apexZ,vt_apexX,vt_apexY,vt_apexZ,vt_TEangle,len_fus,dia_fus,len_vt,...
    len_ht,vol_fuel,Svt,bvt,cr_vt,ct_vt,cmac_vt,Sht,bht,cr_ht,ct_ht,wheel_dia,...
    wheel_width,prop_dia,thrust,ystart_ail,yend_ail,cmac_ail,ystart_elv,yend_elv,...
    cmac_elv,cstart_elv,cend_elv,cmac_rdr,...
    ac_wing_fromnose,xfus,rfus,Sfus,zfus_up,zfus_dn,Iyy]=sizing(in,o)
%%
[T, a, P, rho] = atmosisa([0 in.alt.cr/2 in.alt.cr in.alt.ltr]);
rho = convdensity(rho,'kg/m^3','slug/ft^3');
%wing sizing
Sw=o.w0/o.w_s; %wing area
bw=(in.wing.ar*Sw)^0.5 ;%wing span
cr_w=2*Sw/bw/(1+in.wing.tr);%wing root chord
ct_w= in.wing.tr*cr_w;
cmac_w=2/3*cr_w*(1+in.wing.tr+in.wing.tr^2)/(1+in.wing.tr);
%%
% fuselage and fuel tank
len_fus=3.4*o.w0^0.23; %length of fuselage
len_vt=0.6*len_fus;%moment arm of vertical tail
len_ht=0.6*len_fus;%moment arm of horizontal tail
vol_fuel=o.wfrac.wf_wo*o.w0/6.1*3.785;%volume of fuel tank, liters
% Tails
%horizontal tail
Sht=in.ht.volfac*cmac_w*Sw/len_ht;
bht=(in.ht.ar*Sht)^0.5;
cr_ht=2*Sht/bht/(1+in.ht.tr);
ct_ht=in.ht.tr*cr_ht;
cmac_ht=2/3*cr_ht*(1+in.ht.tr+in.ht.tr^2)/(1+in.ht.tr);
%vertical tail
if in.vt.tvtpan==0 %single vertical tail
    Svt=in.vt.volfac*bw*Sw/len_vt;
    vt_apexY=0;
else   %twin vertical tail panels (tvtpan==1)
    Svt=in.vt.volfac*bw*Sw/len_vt/2;
    vt_apexY=bht/2;%lateral location of vertical tail
end
bvt=(in.vt.ar*Svt)^0.5;
cr_vt=2*Svt/bvt/(1+in.vt.tr);
ct_vt=in.vt.tr*cr_vt;
cmac_vt=2/3*cr_vt*(1+in.vt.tr+in.vt.tr^2)/(1+in.vt.tr);
vt_TEangle=119*in.vt.airfoilthickness*2;
%%
%Lifting surfaces apexes
ymac_w=bw/6*(1+2*in.wing.tr)/(1+in.wing.tr);%lateral position of aerodynamic center (wing)
sweep_w_LE= atand(tand(in.wing.sweep.c_4)+(1-in.wing.tr)/in.wing.ar/...
    (1+in.wing.tr)); %leading edge sweep of wing in degrees
ac_w_apex=tand(sweep_w_LE)*ymac_w+0.25*cmac_w; % position of aerodynamic center of wing from wing apex
wing_apexX=len_fus-(len_ht+0.75*cmac_ht+ac_w_apex);%wing apex from nose
ac_wing_fromnose=wing_apexX+ac_w_apex;%position of wing aerodynamic center from aircraft nose

ymac_ht=bht/6*(1+2*in.ht.tr)/(1+in.ht.tr);%lateral position of aerodynamic center (horizontal tail)
sweep_ht_LE= atand(tand(in.ht.sweep.c_4)+(1-in.ht.tr)/in.ht.ar/...
    (1+in.ht.tr)); %leading edge sweep of horizontal tail in degrees
ac_ht_apex=tand(sweep_ht_LE)*ymac_ht+0.25*cmac_ht; % position of aerodynamic center of ht from ht apex
ht_apexX=ac_wing_fromnose+len_ht-ac_ht_apex;%wing apex from nose of aircraft

ymac_vt=bvt/6*(1+2*in.vt.tr)/(1+in.vt.tr);%lateral position of aerodynamic center (vertical tail)
sweep_vt_LE= atand(tand(in.vt.sweep.c_4)+(1-in.vt.tr)/in.vt.ar/...
    (1+in.vt.tr)); %leading edge sweep of vertical tail in degrees
ac_vt_apexX=tand(sweep_vt_LE)*ymac_vt+0.25*cmac_vt; % position of aerodynamic center of vt from vt apex
vt_apexX=ac_wing_fromnose+len_vt-ac_vt_apexX;%wing apex from nose of aircraft
%%
%Fuselage and wing once again
if in.vt.boom==1  %if the vertical tail is boom mounted
    len_fus(1)=(wing_apexX+cr_w);%fuselage basicially extends to wing TE
    len_fus(2)=(ht_apexX-len_fus(1));%length of boom(s); bacisally from wing TE to tail LE
end
dia_fus=(len_fus(1)/in.fus.fine);
if strcmpi(in.wing.place,'high')
    wing_apexZ=dia_fus/2;
elseif strcmpi(in.wing.place,'low')
    wing_apexZ=-dia_fus/2;
else   %mid wing
    wing_apexZ=0;
end
vt_apexZ=wing_apexZ;%vertical begins are wing weight generally
if strcmpi(in.ht.place,'high')
    ht_apexZ=wing_apexZ+bvt;
elseif strcmpi(in.ht.place,'low')
    ht_apexZ=wing_apexZ;
elseif strcmpi(in.ht.place,'mid')
    ht_apexZ=wing_apexZ+bvt/2;
end
%%
%Fuselage (assumed cylindrical with hemispherical nose)
nfus=20;%number of fuselage stations
nnose=16;
theta=linspace(0,90,nnose);
for n=1:nfus
    if n<=nnose  %we are still in nose region
        rfus(n)=dia_fus/2*sind(theta(n));
        xfus(n)=dia_fus/2-dia_fus/2*cosd(theta(n));
    else  %beyond nose 
        rfus(n)=rfus(n-1);
        xfus(n)=xfus(n-1)+(len_fus(1)-dia_fus/2)/4;
    end
end
Sfus=pi*rfus.^2;
zfus_up=rfus;zfus_dn=-zfus_up;
Iyy=(sum(len_fus))^2*in.radgyr.yy^2*o.w0/4/32.2;
%%
%Control Services
%Ailerons
ystart_ail= in.ctrlsurf.ail.ystart/100*bw/2; %span of aileron, at 50% of b/2
yend_ail= in.ctrlsurf.ail.yend/100*bw/2; %span of aileron, at 90% of b/2
cmac_ail=in.ctrlsurf.ail.crdratio/100*cmac_w; % aileron chord
%Elevators
ystart_elv= in.ctrlsurf.elv.ystart/100*bht/2; %span of aileron, at 50% of b/2
yend_elv= in.ctrlsurf.elv.yend/100*bht/2; %span of aileron, at 90% of b/2
cmac_elv=in.ctrlsurf.elv.crdratio/100*cmac_ht; % elevator mean chord
cstart_elv=(cr_ht-(cr_ht-ct_ht)*in.ctrlsurf.elv.ystart/100)*...
    in.ctrlsurf.elv.crdratio/100;%elevator start chord
cend_elv=(cr_ht-(cr_ht-ct_ht)*in.ctrlsurf.elv.yend/100)*...
    in.ctrlsurf.elv.crdratio/100;%elevator end chord
%Rudder
cmac_rdr=in.ctrlsurf.rdr.crdratio/100*cmac_vt; % rudder chord
%%
%tire sizing
wheel_dia= 1.51*0.9*o.w0^0.349; %wheel diameter in inches
% wheel width 
wheel_width= 0.715*0.9*o.w0^0.312;%wheel diameter in inches
% propeler diameter 
prop_dia=in.fujfac.propdia*(o.propulsion.hp)^0.25; %propellor diameter in inches
thrust=(o.propulsion.hp*550)^0.67*(2*rho(3)*pi/4*(prop_dia/12)^2)^0.33*in.prp_ef;