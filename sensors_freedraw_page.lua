zWave->PANEL_01_Bathroom->ClearScreen()

zWave->PANEL_01_Bathroom->DrawLine(0,20,128,20,1)

zWave->PANEL_01_Bathroom->PrintText(2,2,string.format("%.2d.%.2d %s",zWave->Day,zWave->Month,zWave->Time),1)

zWave->PANEL_01_Bathroom->DrawIcon(0,28,"~arrdowns")
zWave->PANEL_01_Bathroom->PrintText(17,30,string.format("%.1f°C",zWave->TEMPERATURE_SENSOR_01_Bathroom->Value),1)

zWave->PANEL_01_Bathroom->DrawIcon(0,46,"~arrdowns")
zWave->PANEL_01_Bathroom->PrintText(17,48,string.format("%.1f%%",zWave->HUMIDITY_SENSOR_01_Bathroom->Value),1)

zWave->PANEL_01_Bathroom->DrawIcon(54,28,"~arrdowns")
zWave->PANEL_01_Bathroom->PrintText(71,30,string.format("%.1f ppm",zWave->AIR_CO2_SENSOR_01_Bathroom->Value),1)

zWave->PANEL_01_Bathroom->DrawIcon(54,46,"~arrdowns")
zWave->PANEL_01_Bathroom->PrintText(71,48,string.format("%.1f ppm",zWave->AIR_VOC_SENSOR_01_Bathroom->Value),1)

zWave->PANEL_01_Bathroom->DisplayContent()

-- Delay for 1s and then re-draw panel which will trigger OnDraw event and running the script in a loop
SYSTEM.Wait(1000)
zWave->PANEL_01_Bathroom->Draw()
