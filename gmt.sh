#!/bin/zsh
#-R    shorelines defines 
#-I   river all and blue
#-N argument controls political boundary, all and orange defined here
gmt pscoast -JU16/4i -R-93/-86/36/43 -B2f0.5 -Ia/blue -Na/orange -P -K -V > SoilMoistureStations.ps

gmt psxy AllStation.xy -J -R -Sc0.15 -Gblack -K -O -V >> SoilMoistureStations.ps
#instead of circle, changed to diamond and smaller, it can be visible when cascaded over the black dot
gmt psxy HEStation.xy -J -R -Sd0.07 -Gred -O -V >> SoilMoistureStations.ps

#convert ps to espi 
ps2epsi SoilMoistureStations.ps SoilMoistureStations.epsi
#convert espi to tif with DPI with 150 
convert -density 150 SoilMoistureStations.epsi soil.tif
