%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: C:\Users\Sondos Ahmed\Documents\MATLAB\gupta.xls
%    Worksheet: gupta
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2019/07/01 20:01:38

%% Import the data
[~, ~, raw] = xlsread('C:\Users\Sondos Ahmed\Documents\MATLAB\gupta.xls','gupta');
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
cellVectors = raw(:,[1,3,5,6,7,8,9,10,11,12]);
raw = raw(:,[2,4,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93]);

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
StudyName = cellVectors(:,1);
ExportDate = data(:,1);
Name = cellVectors(:,2);
Age = data(:,2);
Gender = cellVectors(:,3);
StimulusName = cellVectors(:,4);
SlideType = cellVectors(:,5);
EventSource = cellVectors(:,6);
Timestamp = cellVectors(:,7);
MediaTime = cellVectors(:,8);
PostMarker = cellVectors(:,9);
Annotation = cellVectors(:,10);
StressEpoc = data(:,3);
EngagementEpoc = data(:,4);
RelaxationEpoc = data(:,5);
ExcitementEpoc = data(:,6);
InterestEpoc = data(:,7);
IED_AF3ThetaEpoc = data(:,8);
IED_AF3AlphaEpoc = data(:,9);
IED_AF3Low_betaEpoc = data(:,10);
IED_AF3High_betaEpoc = data(:,11);
IED_AF3GammaEpoc = data(:,12);
IED_F7ThetaEpoc = data(:,13);
IED_F7AlphaEpoc = data(:,14);
IED_F7Low_betaEpoc = data(:,15);
IED_F7High_betaEpoc = data(:,16);
IED_F7GammaEpoc = data(:,17);
IED_F3ThetaEpoc = data(:,18);
IED_F3AlphaEpoc = data(:,19);
IED_F3Low_betaEpoc = data(:,20);
IED_F3High_betaEpoc = data(:,21);
IED_F3GammaEpoc = data(:,22);
IED_FC5ThetaEpoc = data(:,23);
IED_FC5AlphaEpoc = data(:,24);
IED_FC5Low_betaEpoc = data(:,25);
IED_FC5High_betaEpoc = data(:,26);
IED_FC5GammaEpoc = data(:,27);
IED_T7ThetaEpoc = data(:,28);
IED_T7AlphaEpoc = data(:,29);
IED_T7Low_betaEpoc = data(:,30);
IED_T7High_betaEpoc = data(:,31);
IED_T7GammaEpoc = data(:,32);
IED_P7ThetaEpoc = data(:,33);
IED_P7AlphaEpoc = data(:,34);
IED_P7Low_betaEpoc = data(:,35);
IED_P7High_betaEpoc = data(:,36);
IED_P7GammaEpoc = data(:,37);
IED_O1ThetaEpoc = data(:,38);
IED_O1AlphaEpoc = data(:,39);
IED_O1Low_betaEpoc = data(:,40);
IED_O1High_betaEpoc = data(:,41);
IED_O1GammaEpoc = data(:,42);
IED_O2ThetaEpoc = data(:,43);
IED_O2AlphaEpoc = data(:,44);
IED_O2Low_betaEpoc = data(:,45);
IED_O2High_betaEpoc = data(:,46);
IED_O2GammaEpoc = data(:,47);
IED_P8ThetaEpoc = data(:,48);
IED_P8AlphaEpoc = data(:,49);
IED_P8Low_betaEpoc = data(:,50);
IED_P8High_betaEpoc = data(:,51);
IED_P8GammaEpoc = data(:,52);
IED_T8ThetaEpoc = data(:,53);
IED_T8AlphaEpoc = data(:,54);
IED_T8Low_betaEpoc = data(:,55);
IED_T8High_betaEpoc = data(:,56);
IED_T8GammaEpoc = data(:,57);
IED_FC6ThetaEpoc = data(:,58);
IED_FC6AlphaEpoc = data(:,59);
IED_FC6Low_betaEpoc = data(:,60);
IED_FC6High_betaEpoc = data(:,61);
IED_FC6GammaEpoc = data(:,62);
IED_F4ThetaEpoc = data(:,63);
IED_F4AlphaEpoc = data(:,64);
IED_F4Low_betaEpoc = data(:,65);
IED_F4High_betaEpoc = data(:,66);
IED_F4GammaEpoc = data(:,67);
IED_F8ThetaEpoc = data(:,68);
IED_F8AlphaEpoc = data(:,69);
IED_F8Low_betaEpoc = data(:,70);
IED_F8High_betaEpoc = data(:,71);
IED_F8GammaEpoc = data(:,72);
IED_AF4ThetaEpoc = data(:,73);
IED_AF4AlphaEpoc = data(:,74);
IED_AF4Low_betaEpoc = data(:,75);
IED_AF4High_betaEpoc = data(:,76);
IED_AF4GammaEpoc = data(:,77);
LiveMarker = data(:,78);
KeyStroke = data(:,79);
MarkerText = data(:,80);
SceneType = data(:,81);
SceneOutput = data(:,82);
SceneParent = data(:,83);

%% Clear temporary variables
clearvars data raw cellVectors R;