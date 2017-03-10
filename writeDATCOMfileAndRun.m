function aero=writeDATCOMfileAndRun(in,o)
fileID = fopen(['.\datcom1976\',in.datcomfilename,'.INP'],'w');
ft2m=unitsratio('meter','feet');
%%
%Flight Condition Namelist
fprintf(fileID,' $FLTCON NMACH=4.0, MACH(1)=0.1,0.2,0.3,0.35,LOOP=2.,\n');
fprintf(fileID,'  NALT=9.,ALT(1)=0.,250.,500.,750.,1000.,1500.,2000.,3000.,5000.,\n');
fprintf(fileID,'  NALPHA=15.0,\n');
fprintf(fileID,'  ALSCHD(1)=-10.0,-8.0,-6.0,-5.0,-2.0,0.0,2.0,4.0,8.0,9.0,\n');
fprintf(fileID,'   10.0,12.0,13.,14.0,15.0,$\n');
%%
%Options Namelist
fprintf(fileID,' $OPTINS BLREF=%2.2f,SREF=%5.2f,CBARR=%2.2f,$\n',...
    o.wing.b*ft2m,o.wing.S*ft2m^2,o.wing.cmac*ft2m);
%%
%Synthesis Namelist
fprintf(fileID,' $SYNTHS XW=%2.1f,ZW=%2.1f,ALIW=%2.1f,XCG=%2.1f,ZCG=%2.1f,\n',...
    o.wing.apexX*ft2m,o.wing.apexZ*ft2m,in.wing.incidence,o.cgX*ft2m,o.cgZ*ft2m);
if in.vt.tvtpan==0 %Vertical Tail Planform Namelist
    fprintf(fileID,'    XV=%2.2f,ZV=%2.2f,\n',o.vt.apexX*ft2m,o.vt.apexZ*ft2m);
    fprintf(fileID,'    VERTUP=.%s.,\n',in.vt.vertup);
end
fprintf(fileID,'    XH=%2.2f,ZH=%2.2f,$\n',o.ht.apexX*ft2m,o.ht.apexZ*ft2m);
%%
%Wing Planform Namelist
fprintf(fileID,' $WGPLNF CHRDR=%2.2f,CHRDTP=%2.2f,\n',o.wing.cr*ft2m,o.wing.ct*ft2m);
fprintf(fileID,'    SSPN=%2.2f,SSPNE=%2.2f,CHSTAT=.25,TWISTA=%2.2f,TYPE=%1.1f,\n',...
    o.wing.b/2*ft2m,(o.wing.b/2-o.fus.dia/2)*ft2m,in.wing.twist,in.wing.type);
fprintf(fileID,'    SAVSI=%2.1f,DHDADI=%1.1f,$\n',in.wing.sweep.c_4,in.wing.dihedral);
%Horizontal Tail Planform Namelist
fprintf(fileID,' $HTPLNF CHRDR=%2.2f,CHRDTP=%2.2f,\n',o.ht.cr*ft2m,o.ht.ct*ft2m);
fprintf(fileID,'    SSPN=%2.2f,SSPNE=%2.2f,CHSTAT=.25,TYPE=%1.1f,\n',...
    o.ht.b/2*ft2m,o.ht.b/2*ft2m,in.ht.type);
fprintf(fileID,'    SAVSI=%2.1f,DHDADI=%1.1f,$\n',in.ht.sweep.c_4*ft2m,in.ht.dihedral);

if in.vt.tvtpan==0 %Vertical Tail Planform Namelist
    fprintf(fileID,' $VTPLNF CHRDR=%2.2f,CHRDTP=%2.2f,SAVSI=%2.1f,\n',...
        o.vt.cr*ft2m,o.vt.ct*ft2m,in.vt.sweep.c_4);
    fprintf(fileID,'    SSPN=%2.2f,SSPNE=%2.2f,CHSTAT=.25,TYPE=%1.1f,$\n',...
        o.vt.b*ft2m,o.vt.b*ft2m,in.vt.type);
else 
    fprintf(fileID,' $TVTPAN SV=%2.2f,VLP=%2.2f,ZP=%2.2f,VPHITE=%2.2f,\n',...
        o.vt.S,o.vt.mom_arm,o.vt.apexZ-o.cgZ,o.vt.TEangle);
    fprintf(fileID,'    BVP=%2.2f,BV=%2.2f,BDV=0.0,BH=%2.2f,$\n',...
        o.vt.b*ft2m,o.vt.b*ft2m,o.ht.b*ft2m);
end
%%
%Fuselage Body Namelist
fprintf(fileID,' $BODY NX=20.,\n');
fprintf(fileID,'     X(1)=');
for n=1:10
    fprintf(fileID,'%2.3f,',o.fus.x(n)*ft2m);
end
fprintf(fileID,'\n        ');
for n=11:20
    fprintf(fileID,'%2.3f,',o.fus.x(n)*ft2m);
end
fprintf(fileID,'\n');

fprintf(fileID,'     R(1)=');
for n=1:10
    fprintf(fileID,'%2.2f,',o.fus.r(n)*ft2m);
end
fprintf(fileID,'\n        ');
for n=11:20
    fprintf(fileID,'%2.2f,',o.fus.r(n)*ft2m);
end
fprintf(fileID,'$\n');
%%
%Control Surfaces
%Elevators
fprintf(fileID,' $SYMFLP FTYPE=1.,NTYPE=1.,NDELTA=9.,\n');%Plain Flaps, Round Nose
fprintf(fileID,'    PHETE=.0522,TC=.0225,PHETEP=.0391,\n');
fprintf(fileID,'    DELTA(1)=-30.,-25.0,-20.0,-10.,0.,10.,20.,25.,30.,\n');
fprintf(fileID,'    SPANFI=%2.2f, SPANFO=%2.2f,CHRDFI=%2.2f,CHRDFO=%2.2f,$\n',...
    o.ctrlsurf.elv.ystart*ft2m,o.elv.ctrlsurf.yend*ft2m,o.ctrlsurf.elev.cstart*ft2m,o.ctrlsurf.elev.cend*ft2m);
%%
%Control Cards
fprintf(fileID,'DIM M\n');
% fprintf(fileID,'TRIM\n');
fprintf(fileID,'DAMP\n');
fprintf(fileID,'CASEID %s\n',in.caseid);
fprintf(fileID,'%s\n',in.wing.airfoil.root);
fprintf(fileID,'%s\n',in.ht.airfoil);
if in.vt.tvtpan==0 %if there is a single vertical tail
    fprintf(fileID,'%s\n',in.vt.airfoil);
end
%%
%Close the file
fprintf(fileID,'NEXT CASE\n');
fclose(fileID);
%%
%Write and Run Datcom
fileID = fopen('.\datcom1976\fname.txt','wt');
fprintf(fileID,'%s.INP',in.datcomfilename); % write input parameters
fclose(fileID);
%Plot Aircraft input using DATCOM
% drawDATCOMaircraft([in.datcomfilename,'.INP']);
%%
%Run DATCOM and clean the data before exporting to parent function
cd('datcom1976');system('datcom.exe < fname.txt');
delete('fname.*');
aero = datcomimport('datcom.out',true,2);cd('..');
aerotab=fieldnames(aero{1});%get structure field names
%%
%For nonexistent data, Matlab replaced by 99999 or NaN, we need to clean
%that with previously available data.
%Clean Aircraft Aerodynamic Darta
for k = 42:length(aerotab)-8  %aerodynamic data starts in the 42nd field 
    for m = 1:aero{1}.nmach
        for h = 1:aero{1}.nalt
            for a= 1:aero{1}.nalpha
                if aero{1}.(aerotab{k})(a,m,h)==99999 || isnan(aero{1}.(aerotab{k})(a,m,h)) 
                    if a==1 %this happens to be the first element of the loop
                        if m~=1 %if there is Mach precedent
                            aero{1}.(aerotab{k})(a,m,h) = aero{1}.(aerotab{k})(a,m-1,h);   
                        elseif h~=1  %if there is an altitude precedent
                            aero{1}.(aerotab{k})(a,m,h) = aero{1}.(aerotab{k})(a,m,h-1);
                        else %if it is really the first
                            aero{1}.(aerotab{k})(a,m,h) = 0;%assume zero if nothing works
                        end
                    else
                        aero{1}.(aerotab{k})(a,m,h) = aero{1}.(aerotab{k})(a-1,m,h);
                    end
                end
            end
        end
    end
end
%Clean Control Surface Aerodynamic Darta
for k = length(aerotab)-7:length(aerotab)-1  %aerodynamic data for control surfaces 
    for m = 1:aero{1}.nmach
        for h = 1:aero{1}.nalt
            for d= 1:aero{1}.ndelta
                if aero{1}.(aerotab{k})(d,m,h)==99999 || isnan(aero{1}.(aerotab{k})(d,m,h)) 
                    if d==1 %this happens to be the first element of the loop
                        if m~=1 %if there is Mach precedent
                            aero{1}.(aerotab{k})(d,m,h) = aero{1}.(aerotab{k})(d,m-1,h);   
                        elseif h~=1  %if there is an altitude precedent
                            aero{1}.(aerotab{k})(d,m,h) = aero{1}.(aerotab{k})(d,m,h-1);
                        else %if it is really the first
                            aero{1}.(aerotab{k})(d,m,h) = 0;%assume zero if nothing works
                        end
                    else
                        aero{1}.(aerotab{k})(d,m,h) = aero{1}.(aerotab{k})(d-1,m,h);
                    end
                end
            end
        end
    end
end
%Clean Control Surface Aerodynamic Darta
k = length(aerotab);  %drag data for control surfaces 
for a=1:aero{1}.nalpha
    for m = 1:aero{1}.nmach
        for h = 1:aero{1}.nalt
            for d= 1:aero{1}.ndelta
                if aero{1}.(aerotab{k})(a,d,m,h)==99999 || isnan(aero{1}.(aerotab{k})(a,d,m,h)) 
                    if a==1 %this happens to be the first element of the loop
                        if m~=1 %if there is Mach precedent
                            aero{1}.(aerotab{k})(a,d,m,h) = aero{1}.(aerotab{k})(a,d,m-1,h);   
                        elseif h~=1  %if there is an altitude precedent
                            aero{1}.(aerotab{k})(a,d,m,h) = aero{1}.(aerotab{k})(a,d,m,h-1);
                        elseif d~=1  %if there is an altitude precedent
                            aero{1}.(aerotab{k})(a,d,m,h) = aero{1}.(aerotab{k})(a,d-1,m,h);
                        else %if it is really the first
                            aero{1}.(aerotab{k})(a,d,m,h) = 0;%assume zero if nothing works
                        end
                    else
                        aero{1}.(aerotab{k})(a,d,m,h) = aero{1}.(aerotab{k})(a,d,m,h);
                    end
                end
            end
        end
    end
end