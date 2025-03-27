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


%% COMPUTE TIME VARIABLES
global rasterMeasure;

% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp);
	% Relative time in seconds
	TREL_SEC_tmp = rasterMeasure * (0:1:(numSamplesMeasure-1))';
	if numberMeasureCurrent == 1
		elapsedTimeTemp = TREL_SEC_tmp;
	else
		elapsedTimeTemp = TREL_SEC_tmp + #startTimeTemp;
	end
	<<elapsedTime>> = elapsedTimeTemp;
	#startTimeTemp = elapsedTimeTemp(end);
	<<TREL_SEC>> = TREL_SEC_tmp;
	% Relative time in minutes
	TREL_MIN_tmp = TREL_SEC_tmp / 60;
	<<TREL_MIN>> = TREL_MIN_tmp;
	% Relative time in hours
	TREL_HOUR_tmp = TREL_SEC_tmp / 3600;
	<<TREL_HOUR>> = TREL_HOUR_tmp;
catch
end



%% COMPUTE TIME VARIABLES
global rasterMeasure;

% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp);
	% Relative time in seconds
	TREL_SEC_tmp = rasterMeasure * (0:1:(numSamplesMeasure-1))';
	if numberMeasureCurrent == 1
		elapsedTimeTemp = TREL_SEC_tmp;
	else
		elapsedTimeTemp = TREL_SEC_tmp + #startTimeTemp;
	end
	<<elapsedTime>> = elapsedTimeTemp;
	#startTimeTemp = elapsedTimeTemp(end);
	<<TREL_SEC>> = TREL_SEC_tmp;
	% Relative time in minutes
	TREL_MIN_tmp = TREL_SEC_tmp / 60;
	<<TREL_MIN>> = TREL_MIN_tmp;
	% Relative time in hours
	TREL_HOUR_tmp = TREL_SEC_tmp / 3600;
	<<TREL_HOUR>> = TREL_HOUR_tmp;
catch
end



%% COMPUTE TIME VARIABLES
global rasterMeasure;

% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp);
	% Relative time in seconds
	TREL_SEC_tmp = rasterMeasure * (0:1:(numSamplesMeasure-1))';
	if numberMeasureCurrent == 1
		elapsedTimeTemp = TREL_SEC_tmp;
	else
		elapsedTimeTemp = TREL_SEC_tmp + #startTimeTemp;
	end
	<<elapsedTime>> = elapsedTimeTemp;
	#startTimeTemp = elapsedTimeTemp(end);
	<<TREL_SEC>> = TREL_SEC_tmp;
	% Relative time in minutes
	TREL_MIN_tmp = TREL_SEC_tmp / 60;
	<<TREL_MIN>> = TREL_MIN_tmp;
	% Relative time in hours
	TREL_HOUR_tmp = TREL_SEC_tmp / 3600;
	<<TREL_HOUR>> = TREL_HOUR_tmp;
catch
end



%% COMPUTE TIME VARIABLES
global rasterMeasure;

% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp);
	% Relative time in seconds
	TREL_SEC_tmp = rasterMeasure * (0:1:(numSamplesMeasure-1))';
	if numberMeasureCurrent == 1
		elapsedTimeTemp = TREL_SEC_tmp;
	else
		elapsedTimeTemp = TREL_SEC_tmp + #startTimeTemp;
	end
	<<elapsedTime>> = elapsedTimeTemp;
	#startTimeTemp = elapsedTimeTemp(end);
	<<TREL_SEC>> = TREL_SEC_tmp;
	% Relative time in minutes
	TREL_MIN_tmp = TREL_SEC_tmp / 60;
	<<TREL_MIN>> = TREL_MIN_tmp;
	% Relative time in hours
	TREL_HOUR_tmp = TREL_SEC_tmp / 3600;
	<<TREL_HOUR>> = TREL_HOUR_tmp;
catch
end



%% COMPUTE TIME VARIABLES
global rasterMeasure;

% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp);
	% Relative time in seconds
	TREL_SEC_tmp = rasterMeasure * (0:1:(numSamplesMeasure-1))';
	if numberMeasureCurrent == 1
		elapsedTimeTemp = TREL_SEC_tmp;
	else
		elapsedTimeTemp = TREL_SEC_tmp + #startTimeTemp;
	end
	<<elapsedTime>> = elapsedTimeTemp;
	#startTimeTemp = elapsedTimeTemp(end);
	<<TREL_SEC>> = TREL_SEC_tmp;
	% Relative time in minutes
	TREL_MIN_tmp = TREL_SEC_tmp / 60;
	<<TREL_MIN>> = TREL_MIN_tmp;
	% Relative time in hours
	TREL_HOUR_tmp = TREL_SEC_tmp / 3600;
	<<TREL_HOUR>> = TREL_HOUR_tmp;
catch
end



%% COMPUTE TIME VARIABLES
global rasterMeasure;

% Compute relative time variables
try
	% The engine speed is taken as reference variable for time variables computation
	Epm_nEng_tmp = <<Epm_nEng>>;
	numSamplesMeasure = length(Epm_nEng_tmp);
	% Relative time in seconds
	TREL_SEC_tmp = rasterMeasure * (0:1:(numSamplesMeasure-1))';
	if numberMeasureCurrent == 1
		elapsedTimeTemp = TREL_SEC_tmp;
	else
		elapsedTimeTemp = TREL_SEC_tmp + #startTimeTemp;
	end
	<<elapsedTime>> = elapsedTimeTemp;
	#startTimeTemp = elapsedTimeTemp(end);
	<<TREL_SEC>> = TREL_SEC_tmp;
	% Relative time in minutes
	TREL_MIN_tmp = TREL_SEC_tmp / 60;
	<<TREL_MIN>> = TREL_MIN_tmp;
	% Relative time in hours
	TREL_HOUR_tmp = TREL_SEC_tmp / 3600;
	<<TREL_HOUR>> = TREL_HOUR_tmp;
catch
end

