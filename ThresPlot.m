fileID = fopen('CH1_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('CH2_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
B = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('CH3_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
C = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

time = 0.0005:0.0005:47101/2000;

subplot(2,2,1)
plot(A)
xlabel('Sample')
ylabel('Voltage')
%ylim([-0.1 0.1])
subplot(2,2,2)
plot(B)
xlabel('Sample')
ylabel('Voltage')
%ylim([-0.1 0.1])
subplot(2,2,3)
plot(C)
xlabel('Sample')
ylabel('Voltage')
%ylim([-0.1 0.1])