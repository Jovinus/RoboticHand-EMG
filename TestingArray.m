clc
F=[];
for n = 1:20
    C = [];
    for m = 1:3
        a = 'CH';
        b = int2str(m);
        c = '_��';
        d = int2str(n);
        e = '.txt';
        f = 'MAV_';
        g = 'WL_';
        h = 'ZC_';
        i = '��';
        g1 = [a,b,c,d,e];
        g2 = [f,a,b,c,d,e];
        g3 = [g,a,b,c,d,e];
        g4 = [h,a,b,c,d,e];
        fileID = fopen(g2,'r');
        formatSpec = '%f%f%f%f%f%f';
        sizeA = [1 ,Inf];
        A = fscanf(fileID,formatSpec,sizeA);
        fclose(fileID);
        C = [C,A];
    end
   F=[F;C];
end
% MAV �з�
fileID = fopen('MAV_��.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',F);
fclose(fileID);
%% WL �з�
clear
F=[];

for n = 1:20
    C = [];
    for m = 1:3
        a = 'CH';
        b = int2str(m);
        c = '_��';
        d = int2str(n);
        e = '.txt';
        f = 'MAV_';
        g = 'WL_';
        h = 'ZC_';
        i = '��';
        g1 = [a,b,c,d,e];
        g2 = [f,a,b,c,d,e];
        g3 = [g,a,b,c,d,e];
        g4 = [h,a,b,c,d,e];
        fileID = fopen(g3,'r');
        formatSpec = '%f%f%f%f%f%f';
        sizeA = [1 ,Inf];
        A = fscanf(fileID,formatSpec,sizeA);
        fclose(fileID);
        C = [C,A];
    end
   F=[F;C];
end

fileID = fopen('WL_��.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',F);
fclose(fileID);
%% ZC �з�
clear
F=[];

for n = 1:20
    C = [];
    for m = 1:3
        a = 'CH';
        b = int2str(m);
        c = '_��';
        d = int2str(n);
        e = '.txt';
        f = 'MAV_';
        g = 'WL_';
        h = 'ZC_';
        i = '��';
        g1 = [a,b,c,d,e];
        g2 = [f,a,b,c,d,e];
        g3 = [g,a,b,c,d,e];
        g4 = [h,a,b,c,d,e];
        fileID = fopen(g4,'r');
        formatSpec = '%f%f%f%f%f%f';
        sizeA = [1 ,Inf];
        A = fscanf(fileID,formatSpec,sizeA);
        fclose(fileID);
        C = [C,A];
    end
   F=[F;C];
end

fileID = fopen('ZC_��.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',F);
fclose(fileID);
%% RMS �з�
clear
F=[];

for n = 1:20
    C = [];
    for m = 1:3
        a = 'CH';
        b = int2str(m);
        c = '_��';
        d = int2str(n);
        e = '.txt';
        f = 'RMS_';
        g = 'SSC_';
        h = 'Var_';
        i = '��';
        g1 = [a,b,c,d,e];
        g2 = [f,a,b,c,d,e];
        g3 = [g,a,b,c,d,e];
        g4 = [h,a,b,c,d,e];
        fileID = fopen(g2,'r');
        formatSpec = '%f%f%f%f%f%f';
        sizeA = [1 ,Inf];
        A = fscanf(fileID,formatSpec,sizeA);
        fclose(fileID);
        C = [C,A];
    end
   F=[F;C];
end

fileID = fopen('RMS_��.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',F);
fclose(fileID);
%% SSC �з�
clear
F=[];

for n = 1:20
    C = [];
    for m = 1:3
        a = 'CH';
        b = int2str(m);
        c = '_��';
        d = int2str(n);
        e = '.txt';
        f = 'RMS_';
        g = 'SSC_';
        h = 'Var_';
        i = '��';
        g1 = [a,b,c,d,e];
        g2 = [f,a,b,c,d,e];
        g3 = [g,a,b,c,d,e];
        g4 = [h,a,b,c,d,e];
        fileID = fopen(g3,'r');
        formatSpec = '%f%f%f%f%f%f';
        sizeA = [1 ,Inf];
        A = fscanf(fileID,formatSpec,sizeA);
        fclose(fileID);
        C = [C,A];
    end
   F=[F;C];
end

fileID = fopen('SSC_��.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',F);
fclose(fileID);
%% RMS �з�
clear
F=[];

for n = 1:20
    C = [];
    for m = 1:3
        a = 'CH';
        b = int2str(m);
        c = '_��';
        d = int2str(n);
        e = '.txt';
        f = 'RMS_';
        g = 'SSC_';
        h = 'Var_';
        i = '��';
        g1 = [a,b,c,d,e];
        g2 = [f,a,b,c,d,e];
        g3 = [g,a,b,c,d,e];
        g4 = [h,a,b,c,d,e];
        fileID = fopen(g4,'r');
        formatSpec = '%f%f%f%f%f%f';
        sizeA = [1 ,Inf];
        A = fscanf(fileID,formatSpec,sizeA);
        fclose(fileID);
        C = [C,A];
    end
   F=[F;C];
end

fileID = fopen('Var_��.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',F);
fclose(fileID);