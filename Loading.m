%% Input Data
fileID = fopen('SSC_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('SSC_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('SSC_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

SSC = [A;B;C];

fileID = fopen('ZC_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('ZC_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('ZC_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

ZC = [A;B;C];

fileID = fopen('WL_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('WL_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('WL_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

WL = [A;B;C];

fileID = fopen('Var_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('Var_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('Var_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

Var = [A;B;C];

fileID = fopen('RMS_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('RMS_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('RMS_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

RMS = [A;B;C];

fileID = fopen('MAV_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('MAV_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('MAV_��.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

MAV = [A;B;C];

Input = [WL,RMS,ZC,MAV,Var];
%% Output Data
filename = 'C:\Users\user\Documents\MATLAB\Result.txt';
delimiter = '';


formatSpec = '%s%[^\n\r]';


fileID = fopen(filename,'r');

dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter,  'ReturnOnError', false);


fclose(fileID);


raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));



rawNumericColumns = {};
rawCellColumns = raw(:, 1);


Output = rawCellColumns(:, 1);

clearvars filename delimiter formatSpec fileID dataArray ans raw col numericData rawCellColumns;
%%

filename = 'C:\Users\user\Documents\MATLAB\Result1.txt';
delimiter = '';
formatSpec = '%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter,  'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
rawData = dataArray{1};
for row=1:size(rawData, 1);
    % �������� �ƴ� ���λ� �� ���̻縦 �˻��ϰ� �����ϴ� ���� ǥ������ ����ϴ�.
    regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\,]*)+[\.]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\,]*)*[\.]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
    try
        result = regexp(rawData{row}, regexstr, 'names');
        numbers = result.numbers;
        
        % õ ������ �ƴ� ��ġ���� ��ǥ�� �˻��߽��ϴ�.
        invalidThousandsSeparator = false;
        if any(numbers==',');
            thousandsRegExp = '^\d+?(\,\d{3})*\.{0,1}\d*$';
            if isempty(regexp(thousandsRegExp, ',', 'once'));
                numbers = NaN;
                invalidThousandsSeparator = true;
            end
        end
        % ���� ���ڿ��� ���ڷ� ��ȯ�մϴ�.
        if ~invalidThousandsSeparator;
            numbers = textscan(strrep(numbers, ',', ''), '%f');
            numericData(row, 1) = numbers{1};
            raw{row, 1} = numbers{1};
        end
    catch me
    end
end
TOutput = cell2mat(raw(:, 1));
clearvars filename delimiter formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
TInput=[Input TOutput];