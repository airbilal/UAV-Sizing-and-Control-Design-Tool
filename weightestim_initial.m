function [w0,hp,wfrac_cru,wfrac_ltr,wfrac_wf_w0,L_D_cru,L_D_ltr]=weightestim_initial(in,o)
[T, a, P, rho] = atmosisa([0 in.alt.cr/2 in.alt.cr in.alt.ltr]);
rho = convdensity(rho,'kg/m^3','slug/ft^3');
%Weight fractions
ws.cru=(in.wfrac.warmupto*in.wfrac.clmb*o.w_s);
q_cr=0.5*rho(3)*(in.v.cr*1.689)^2;
L_D_cru=1/((q_cr*in.Cd0/ws.cru)+(ws.cru/(q_cr*pi*in.wing.ar*in.oswal)));
wfrac_cru=exp(-in.range*6076.12*(in.Cbhp.cru/3600)/(550*in.prp_ef*L_D_cru));
%W4_W3
ws.ltr=(in.wfrac.warmupto*in.wfrac.clmb*wfrac_cru*o.w_s);
q_ltr=0.5*rho(4)*(in.v.ltr*1.689)^2;
L_D_ltr=1/((q_ltr*in.Cd0/ws.ltr)+(ws.ltr/(q_ltr*pi*in.wing.ar*in.oswal)));
wfrac_ltr=exp(-((in.endur*3600)*(in.v.ltr*1.689)*(in.Cbhp.ltr/3600))/(550*in.prp_ef*L_D_ltr));

wfrac_wf_w0=in.wfrac.rsrv*(1-in.wfrac.warmupto*in.wfrac.clmb*wfrac_cru*wfrac_ltr*in.wfrac.dsnt*in.wfrac.land);
%take off gross weight
c1=-0.1;c2=0.05;c3=0.1;c4=-0.05;c5=0.17;
w0=fsolve(@(w0) w0-w0*wfrac_wf_w0-in.fujfac.w*w0^(c1+1)*in.wing.ar^c2*in.hp_w0^c3*o.w_s^c4*(in.v.max*1.69)^c5-in.w.pay, in.w.initestim);
hp=w0*in.hp_w0;%power