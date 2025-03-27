%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%     CONFIGURATION     %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rb.settings.signalAliasUseCase = 2;
rb.settings.useHistCalcSmart = false;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CREATE GLOBAL VARIABLES, CONDITIONS, COUNTERS
% Counter of config diffs runs
global numberMeasureCurrent;
global numSamplesMeasure;
numberMeasureCurrent = 0;
numSamplesMeasure = 0;
% Current measure file name
global pathMeasureCurrent;
global nameMeasureCurrent;
global extnMeasureCurrent;
pathMeasureCurrent = '';
nameMeasureCurrent = '';
extnMeasureCurrent = '';

global xlsConfigFile
xlsConfigFile = ''; % PUT HERE THE FILE PATH+NAME OF THE CHART DEFINITION EXCEL WORKBOOK

global choices;
choices = 'reportLayout'; % PUT HERE THE COMMA SEPARATED LIST OF WORKSHEETS OF THE EXCEL FILE TO BE INTERPRETED


%