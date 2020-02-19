#!/bin/bash
#Kevin Lee
#remove previous history 
rm HEStation.xy
for file in HigherElevation/*
do 
	awk '/Longitude/ {print -1 * $NF}' HigherElevation/Station_*.txt > Long.list
	awk '/Latitude/ {print 1 * $NF}' HigherElevation/Station_*.txt > Lat.list
	done

paste Long.list Lat.list > HEStation.xy
#remove the list files to make the folder clean 
rm *.list