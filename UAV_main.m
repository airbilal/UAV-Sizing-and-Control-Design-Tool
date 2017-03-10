clc;clear;close all;
%Kode for Initial Sizing - Unmanned Aerial Vehicles - (KIS-UAV)
%Developed by Dr. Bilal A. Siddiqui, Mechanical Eng. Dept., DHA Suffa University 
%with students Hiba Ashraf, Ado.fusam Asif, Mohsin Ahmed and Shoib Ahmed
%%
addpath('./drawDATCOMaircraft','./datcom1976');
%User inputs
%Mission Profile
in.caseid='UAV SMASH 2017';
in.datcomfilename='smash1';
in.range= 100;%Cruise Range in/out, nautical miles
in.alt.cr=1500; %cruise altitude, ft
in.alt.ltr=1500; %cruise altitude, ft
in.endur=6; %endurance, hrs
in.roc= 1500; %rate of climb, ft/min
in.w.pay=12;%payload, lb
in.takeoff.lat=25;%takeoff point latitude (degrees)
in.takeoff.long=67;%takeoff point longitude (degrees)
%Speed Limitations
in.v.st=23;%stall speed, kt
in.v.cr= 40;%cruise speed, kt
in.v.ltr= 30;%loiter speed, kt
in.v.to= in.v.st*1.1;%take off speed, kt
in.v.clmb= (in.v.to+in.v.cr)/2;%climb speed, kt
in.v.max=65;%maximum speed, kt
in.wing.ar= 8;% aspect ratio, initial guess
in.wing.tr= 0.45; %taper ratio, initial guess
in.wing.sweep.c_4=0;%sweep angle of wing quarter chord
in.wing.dihedral=0;%wing dihedral angle (deg)
in.wing.twist=3;%wing twist angle (deg)
in.wing.airfoil.root='NACA-W-4-4415';%airfoil at wing root
in.wing.airfoil.tip ='NACA-W-4-4412';%airfoil at wing tip
in.wing.incidence=0;%preset wing incidence, deg (0-2 degrees)
in.wing.place='high';%[high low or mid] wing
in.wing.type=1;%1=straight tapered, 2=double delta, 3=cranked planform

in.ht.ar= 4;%aspect ratio of horizontal tail
in.ht.tr=1;%taper ratio of horizontal tail
in.ht.volfac=0.75;%volume factor of horizontal tail
in.ht.sweep.c_4=0;%sweep angle of horizontal tail quarter chord
in.ht.dihedral=0;%horizontal tail dihedral angle (deg)
in.ht.airfoil='NACA-H-4-0012';%airfoil at horizontal tail
in.ht.place='low';%[high low mid] horizontal tail
in.ht.incidence=0;%preset horizontal tail incidence, deg
in.ht.type=1;%1=sttraight tapered, 2=double delta, 3=cranked planform

in.vt.ar=1.5;%aspect ratio of vertical tail
in.vt.tr=0.4;%taper ratio of vertical tail
in.vt.volfac= 0.05;%volume factor of vertical tail
in.vt.sweep.c_4=20;%sweep angle of vertical tail quarter chord
in.vt.airfoil='NACA-V-4-0012';%airfoil at vertical tail
in.vt.airfoilthickness=0.12;%airfoil thickness for vertical tail
in.vt.tvtpan=0;%twin vertical tails (set to 0 for single vertical tail)
in.vt.boom=1;% vertical tail(s) boom mounted (set to 0 for no)
in.vt.vertup='TRUE';%vertical tail above reference plain (set FALSE for no)
in.vt.type=1;%1=sttraight tapered, 2=double delta, 3=cranked planform

in.fus.fine=4;%fineness ratio of fuselages [~3 for subsonic]
in.radgyr.yy=0.35;%non-dimenstional radius of gyration in pitch [ft]

in.Clmax=1.7; % maximum lift coefficient
in.tkofpar= 120; %take-off parameter fig 5.4
in.tkofdist= 1000; % take off distance for ground roll, ft 
in.hp_w0=0.0997;%horsepower to weight ratio, hp/lb 
in.oswal=0.8;%Oswarld wing effiency factor
in.Cd0=0.03;%zero lift drag coefficient
in.Cbhp.cru=0.5;%specific fuel consumption at cruise, lb/hr/hp
in.Cbhp.ltr=0.4;%specific fuel consumption at loiter, lb/hr/hp
in.prp_ef=0.7;%propeller efficiency
in.wfrac.warmupto=0.97;%weight fraction of warmup and take-off segment
in.wfrac.clmb=0.985;%weight fraction of climb segment
in.wfrac.dsnt=0.993;%weight fraction of descent segment
in.wfrac.land=0.995;%weight fraction of landing segment
in.wfrac.rsrv=1.06;%reserve and trapped fuel percentage
in.fujfac.w=0.45;%fudge factor in weight estimation
in.fujfac.propdia=12.75;%fudge factor in propellor dia estimation
%Control Surface Specifications
in.ctrlsurf.ail.ystart=25;%semispan station of aileron start on wing [50%]
in.ctrlsurf.ail.yend=95;%semispan station of aileron end on wing [90%]
in.ctrlsurf.ail.crdratio=25;%ratio of aileron  chord to wing cord [15-25%]
in.ctrlsurf.elv.ystart=0;%semispan station of aileron start on wing [50%]
in.ctrlsurf.elv.yend=100;%semispan station of aileron end on wing [90%]
in.ctrlsurf.elv.crdratio=30;%ratio of elevator chord to wing cord [25-50%]
in.ctrlsurf.rdr.crdratio=30;%ratio of rudder   chord to wing cord [25-50%]
%Atmospheric conditions
% in.atm.rho.sealvl= 0.00238;%sea level density, slug/ft3 
% in.atm.rho.midalt=0.00232;%density at half the cruise alt,slug/ft3  
% in.atm.rho.crualt=0.00227;%density at cruise altitude, slug/ft3
%Initial Estimate of take off weight, lb
in.w.initestim=50;%initial estimate of takeoff weight
%%
%Find wing loading, W/S (lb/ft2)
[o.w_s,o.M.to,o.M.clmb,o.M.cr,o.M.ltr]=wingloading(in);
%%
%Take off weight initial estimate

[o.w0,o.propulsion.hp,o.wfrac.cru,o.wfrac.ltr,o.wfrac.wf_wo,o.L_D.cru,...
    o.L_D.ltr]=weightestim_initial(in,o);
%%
%Initial geometric sizing
[o.wing.S,o.wing.b,o.wing.cr,o.wing.ct,o.wing.cmac,o.wing.ymac,...
 o.wing.sweep.LE,o.wing.apexX,o.wing.apexZ,o.ht.apexX,o.ht.apexZ,...
 o.vt.apexX,o.vt.apexY,o.vt.apexZ,o.vt.TEangle,o.fus.len,o.fus.dia,o.vt.mom_arm,...
 o.ht.mom_arm,o.fueltank.vol,o.vt.S,o.vt.b,o.vt.cr,o.vt.ct,o.vt.cmac,...
 o.ht.S,o.ht.b,o.ht.cr,o.ht.ct,o.wheel.dia,o.wheel.width,o.propulsion.prop_dia,...
 o.propulsion.thrust,o.ctrlsurf.ail.ystart,o.ail.ctrlsurf.yend,o.ctrlsurf.ail.cmac,...
 o.ctrlsurf.elv.ystart,o.elv.ctrlsurf.yend,o.ctrlsurf.elev.cmac,o.ctrlsurf.elev.cstart,o.ctrlsurf.elev.cend,...
 o.ctrlsurf.rdr.cmac,o.wing.ac,o.fus.x,o.fus.r,o.fus.S,o.fus.zup,...
 o.fus.zdn,o.Iyy]=sizing(in,o);

o.cgX=o.wing.ac;%place cg at wing aerodynamic center initially
o.cgZ=0; %vertical location of cg
%%
%Calculate Aerodynamics using USAF DATCOM
o.aero_dc=writeDATCOMfileAndRun(in,o);
%%
%Trim and Linearize
alfa_guess = 4*pi/180;         % Trim Incidence [rad]
[o.linsys.long.op,o.linsys.long.sys]=trim_lin(in);
%Save results
save uav_config