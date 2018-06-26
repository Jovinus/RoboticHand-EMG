function [] = Analyzing(A)
% EMG Analyzing Tools - Prototype Version_0.1
% Reading a textfile array
fileID = fopen(A,'r');
formatSpec = '%f,%f';
sizeA = [2 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);
% Deviding Array A into Time and Amp(Amplitude)
Time = A(1,:);
Amp = A(2,:);
% Plot rectified EMG
plot(Time,Amp)
xlabel('Time')
ylabel('Amplitude')
