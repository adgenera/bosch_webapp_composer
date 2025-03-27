
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ALTITUDE ESTIMATE WITH ENVORIMENTAL PRESSURE
try
	%EnvP_p_tmp = <<EnvP_p>>;
	Altitude_tmp = (288.15 / 0.0065) * (1 - (EnvP_p_tmp / 1013.25) .^ (1 / 5.255));
	Altitude_tmp = Altitude_tmp .* (Altitude_tmp>0);
	<<Altitude>> = Altitude_tmp;
catch
end