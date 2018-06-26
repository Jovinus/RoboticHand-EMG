% EMG Analyzing Tools - Prototype Version_0.1
clear
clc
%% Reading a textfile array
for m = 1:3
    for n = 1:20
    a = 'CH_';
    b = int2str(m);
    c = '빠';
    d = int2str(n);
    e = '.txt';
    a = [a,b,c,d,e]
    end
end
fileID = fopen('CH1_빠20.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);
fileID = fopen('CH2_빠20.txt','r');
formatSpec = '%f';
sizeB = [1 Inf];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);
fileID = fopen('CH3_빠20.txt','r');
formatSpec = '%f';
sizeC = [1 Inf];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);
%% Creating Time Dimension
time = 0.0005:0.0005:1.5;
%% Processing Data abs
pA = abs(A);
pB = abs(B);
pC = abs(C);
%% Setting Starting Point

[pks,locs] = findpeaks(pA,'MinPeakDistance',10,'Threshold',2.5339e-08);
locs1 =  locs(A(locs)>0.0020);
[pks,locs] = findpeaks(pB,'MinPeakDistance',10,'Threshold',3.3518e-07);
locs2 =  locs(B(locs)>0.0046);
[pks,locs] = findpeaks(pC,'MinPeakDistance',10,'Threshold',1.3244e-08);
locs3 =  locs(C(locs)>0.0038);
if locs1(1) > locs2(1)
    locs = locs1(1):locs1(1)+2999;
elseif locs2(1) > locs3(1)
    locs = locs2(1):locs2(1)+2999;
else
    locs = locs3(1):locs3(1)+2999;
end
%% Deviding Array A into Time and Amp(Amplitude)
Amp1 = A(locs);
Amp2 = B(locs);
Amp3 = C(locs);
fileID = fopen('Ch1_빠20.txt','w');
fprintf(fileID,'%f\n',Amp1);
fclose(fileID);
fileID = fopen('Ch2_빠20.txt','w');
fprintf(fileID,'%f\n',Amp2);
fclose(fileID);
fileID = fopen('Ch3_빠20.txt','w');
fprintf(fileID,'%f\n',Amp3);
fclose(fileID);
%% Plot rectified EMG
subplot(2,2,1)
plot(time,Amp1)
xlabel('Time')
ylabel('Amplitude')
title('channel 1')
subplot(2,2,2)
plot(time,Amp2)
xlabel('Time')
ylabel('Amplitude')
title('channel 2')
subplot(2,2,3)
plot(time,Amp3)
xlabel('Time')
ylabel('Amplitude')
title('channel 3')
%subplot(2,2,4)
%plot(Time,Amp4)
%xlabel('Time')
%ylabel('Amplitude')
%title('channel 4')
%% Processing
