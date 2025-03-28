% CHART DEFINITION
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Operating points');
tempSection.addChart('scatter','DP_O_1');
tempChart = tempSection.getChart('DP_O_1');
tempChart.setSignals('Epm_nEng','InjCrv_qSetUnBal');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([0,5000],[0 150]);
tempChart.setQuantity(50,5);
tempChart.setPosition(0,0,.5,.666);
tempChart.setAxisProp('Title','Engine operating points','XLabel','Engine speed [rpm]','YLabel','Quantity[mm3/hub]','ZLabel','Frequency [%]','intervalCount',5);
tempChart.setDisplayType('relFrequency');
tempChart.setMarkProp('Size',10);
tempChart.setSignalThresholds(2,[0,0,100,100]);
tempChart.setDisplayThresholds(2,[1,1,1,1]);
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Operating points');
tempSection.addChart('scatter','DP_O_2');
tempChart = tempSection.getChart('DP_O_2');
tempChart.setSignals('VehV_v','InjCrv_qSetUnBal');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([0,250],[0 150]);
tempChart.setQuantity(2,5);
tempChart.setPosition(.5,0,.5,.666);
tempChart.setAxisProp('Title','Engine operating points','XLabel','Vehicle speed [km/h]','YLabel','Quantity[mm3/hub]','ZLabel','Frequency [%]','intervalCount',5);
tempChart.setDisplayType('relFrequency');
tempChart.setMarkProp('Size',10);
tempChart.setSignalThresholds(2,[0,0,100,100]);
tempChart.setDisplayThresholds(2,[1,1,1,1]);
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Operating points');
tempSection.addChart('hist','DP_O_3');
tempChart = tempSection.getChart('DP_O_3');
tempChart.setSignals('Epm_nEng');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([-250,5250]);
tempChart.setQuantity(500);
tempChart.setPosition(0,.666,.25,.333);
tempChart.setAxisProp('Title','Engine Speed','XLabel','Engine speed [rpm]','ShowLegend',0);
tempChart.setDisplayType('percent');
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Operating points');
tempSection.addChart('hist','DP_O_4');
tempChart = tempSection.getChart('DP_O_4');
tempChart.setSignals('InjCrv_qSetUnBal');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([-25,525]);
tempChart.setQuantity(50);
tempChart.setPosition(.25,.666,.25,.333);
tempChart.setAxisProp('Title','Quantity','XLabel','Quantity[mm3/hub]','ShowLegend',0);
tempChart.setDisplayType('percent');
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Operating points');
tempSection.addChart('hist','DP_O_6');
tempChart = tempSection.getChart('DP_O_6');
tempChart.setSignals('VehV_v');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([-5,165]);
tempChart.setQuantity(10);
tempChart.setPosition(.5,.666,.25,.333);
tempChart.setAxisProp('Title','Vehicle Speed','XLabel','Vehicle speed [km/h]','ShowLegend',0);
tempChart.setDisplayType('percent');
tempChapter = rb.getChapter('Driving Profile');
tempSection = tempChapter.getSection('Operating points');
tempSection.addChart('hist','DP_O_7');
tempChart = tempSection.getChart('DP_O_7');
tempChart.setSignals('Tra_numGear');
tempChart.addCondition('elapsedTime',' >=',0,0,0);
tempChart.setRange([-1.5,6.5]);
tempChart.setQuantity(1);
tempChart.setPosition(.75,.666,.25,.333);
tempChart.setAxisProp('Title','Gear','XLabel','Gear [-]','ShowLegend',0);
tempChart.setDisplayType('percent');
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