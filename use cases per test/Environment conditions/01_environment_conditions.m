tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Environment conditions');
tempSection.addChart('hist','DP_Ec_1');
tempChart = tempSection.getChart('DP_Ec_1');
tempChart.setSignals('EnvP_p');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([475 1425]);
tempChart.setQuantity(50);
tempChart.setPosition(0,0,.5,.5);
tempChart.setAxisProp('Title','Environment pressure','XLabel','Pressure [hPa]','ShowLegend',0);
tempChart.setDisplayType('percent');
tempChart.setLegend('EnvP_p [hPa]');
tempChart.setSignalThresholds(1,[500,700,1100,1300]);
tempChart.setDisplayThresholds(1,[1,1,1,1]);
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Environment conditions');
tempSection.addChart('hist','DP_Ec_2');
tempChart = tempSection.getChart('DP_Ec_2');
tempChart.setSignals('EnvT_t');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([-52.5 97.5]);
tempChart.setQuantity(5);
tempChart.setPosition(.5,0,.5,.5);
tempChart.setAxisProp('Title','Temperature','XLabel','Temperature [°C]','ShowLegend',1);
tempChart.setDisplayType('percent');
tempChart.setLegend('EnvT_t [°C]');
tempChart.setSignalThresholds(1,[-40,-25,60,85]);
tempChart.setDisplayThresholds(1,[1,1,1,1]);
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Environment conditions');
tempSection.addChild('hist','DP_Ec_21','DP_Ec_2');
tempChart = tempSection.getChart('DP_Ec_21');
tempChart.setSignals('FuelT_t');
tempChart.setLegend('FuelT_t[°C]');
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Environment conditions');
tempSection.addChild('hist','DP_Ec_22','DP_Ec_2');
tempChart = tempSection.getChart('DP_Ec_22');
tempChart.setSignals('UrTLCSnsr_tSens');
tempChart.setLegend('UrTLCSnsr_tSens [°C]');
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Environment conditions');
tempSection.addChart('hist','DP_Ec_3');
tempChart = tempSection.getChart('DP_Ec_3');
tempChart.setSignals('CEngDsT_t');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([-52.5,152.5]);
tempChart.setQuantity(5);
tempChart.setPosition(.5,.5,.5,.5);
tempChart.setAxisProp('Title','Engine coolant temperature','XLabel','CEngDsT_t [°C]','ShowLegend',0);
tempChart.setDisplayType('percent');
tempChart.setLegend('CEngDsT_t [°C]');
tempChart.setSignalThresholds(1,[-40,-25,105,110]);
tempChart.setDisplayThresholds(1,[1,1,1,1]);
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Environment conditions');
tempSection.addChart('hist','DP_Ec_4');
tempChart = tempSection.getChart('DP_Ec_4');
tempChart.setSignals('Altitude');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([]);
tempChart.setQuantity(5000);
tempChart.setPosition(0,.5,.5,.5);
tempChart.setAxisProp('Title','Calculated Altitude','XLabel','Altitude [m]','ShowLegend',0);
tempChart.setDisplayType('percent');
tempChart.setLegend('Altitude [m]');