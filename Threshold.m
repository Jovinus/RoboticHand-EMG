fileID = fopen('CH1_thr.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch1�� max ��')
a1 = max(A)
fprintf('ch1�� mean ��')
a2 = mean(A)

fileID = fopen('CH2_thr.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
B = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch2�� max ��')
b1 = max(B)
fprintf('ch2�� mean ��')
b2 = mean(B)

fileID = fopen('CH3_thr.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
C = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch3�� max ��')
c1 = max(C)
fprintf('ch3�� mean ��')
c2 = mean(C)

fileID = fopen('CH1_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch1�� max ��')
d1 = max(A)
fprintf('ch1�� mean ��')
d2 = mean(A)

fileID = fopen('CH2_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
B = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch2�� max ��')
e1 = max(B)
fprintf('ch2�� mean ��')
e2 = mean(B)

fileID = fopen('CH3_thr1.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
C = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fprintf('ch3�� max ��')
f1 = max(C)
fprintf('ch3�� mean ��')
f2 = mean(C)

fprintf('ch1�� max ��հ�')
Result = (a1+d1)/2
fprintf('ch1�� mean ��հ�')
Result = (a2+d2)/2
fprintf('ch2�� max ��հ�')
Result = (b1+e1)/2
fprintf('ch2�� mean ��հ�')
Result = (b2+e2)/2
fprintf('ch3�� max ��հ�')
Result = (c1+f1)/2
fprintf('ch3�� mean ��հ�')
Result = (c2+f2)/2