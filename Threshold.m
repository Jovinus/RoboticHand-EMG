fileID = fopen('CH1_thr.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch1의 max 값')
a1 = max(A)
fprintf('ch1의 mean 값')
a2 = mean(A)

fileID = fopen('CH2_thr.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
B = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch2의 max 값')
b1 = max(B)
fprintf('ch2의 mean 값')
b2 = mean(B)

fileID = fopen('CH3_thr.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
C = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch3의 max 값')
c1 = max(C)
fprintf('ch3의 mean 값')
c2 = mean(C)

fileID = fopen('CH1_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch1의 max 값')
d1 = max(A)
fprintf('ch1의 mean 값')
d2 = mean(A)

fileID = fopen('CH2_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
B = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch2의 max 값')
e1 = max(B)
fprintf('ch2의 mean 값')
e2 = mean(B)

fileID = fopen('CH3_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
C = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch3의 max 값')
f1 = max(C)
fprintf('ch3의 mean 값')
f2 = mean(C)

fprintf('ch1의 max 평균값')
Result = (a1+d1)/2
fprintf('ch1의 mean 평균값')
Result = (a2+d2)/2
fprintf('ch2의 max 평균값')
Result = (b1+e1)/2
fprintf('ch2의 mean 평균값')
Result = (b2+e2)/2
fprintf('ch3의 max 평균값')
Result = (c1+f1)/2
fprintf('ch3의 mean 평균값')
Result = (c2+f2)/2