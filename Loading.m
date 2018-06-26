%% Input Data
fileID = fopen('SSC_묵.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('SSC_찌.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('SSC_빠.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

SSC = [A;B;C];

fileID = fopen('ZC_묵.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('ZC_찌.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('ZC_빠.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

ZC = [A;B;C];

fileID = fopen('WL_묵.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('WL_찌.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('WL_빠.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

WL = [A;B;C];

fileID = fopen('Var_묵.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('Var_찌.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('Var_빠.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

Var = [A;B;C];

fileID = fopen('RMS_묵.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('RMS_찌.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('RMS_빠.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeC = [20 18];
C = fscanf(fileID,formatSpec,sizeC);
fclose(fileID);

RMS = [A;B;C];

fileID = fopen('MAV_묵.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeA = [20 18];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);

fileID = fopen('MAV_찌.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
sizeB = [20 18];
B = fscanf(fileID,formatSpec,sizeB);
fclose(fileID);

fileID = fopen('MAV_빠.txt','r');
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
    % 숫자형이 아닌 접두사 및 접미사를 검색하고 제거하는 정규 표현식을 만듭니다.
    regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\,]*)+[\.]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\,]*)*[\.]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
    try
        result = regexp(rawData{row}, regexstr, 'names');
        numbers = result.numbers;
        
        % 천 단위가 아닌 위치에서 쉼표를 검색했습니다.
        invalidThousandsSeparator = false;
        if any(numbers==',');
            thousandsRegExp = '^\d+?(\,\d{3})*\.{0,1}\d*$';
            if isempty(regexp(thousandsRegExp, ',', 'once'));
                numbers = NaN;
                invalidThousandsSeparator = true;
            end
        end
        % 숫자 문자열을 숫자로 변환합니다.
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