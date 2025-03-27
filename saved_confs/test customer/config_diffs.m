%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ADDITIONAL CALCULATED VARIABLES
tempSignals = rb.signals;
Master = rb.getSystem('Master');
%%Master=rb.setSystem('Master','\ETKC:1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% NUMBER OF CONFIG DIFFS CALCULATIONS
global numberMeasureCurrent;
numberMeasureCurrent = numberMeasureCurrent + 1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CURRENT FILE NAME UNDER PROCESSING
global pathMeasureCurrent;
global nameMeasureCurrent;
global extnMeasureCurrent;
[pathMeasureCurrent,nameMeasureCurrent,extnMeasureCurrent] = fileparts(eval(sprintf('rb.rawData.measInfo.info%d.name',numberMeasureCurrent)));

global Categories;

global rasterMeasure;
global numSamplesMeasure;
% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp)
catch ME
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% MEASURE FILE NUMBER HANDLING
try
	% Set number of measure file
	MDF_num_tmp = numberMeasureCurrent;% * ones(numSamplesMeasure,1);
	<<MDF_num>> = MDF_num_tmp;
catch ME
end
