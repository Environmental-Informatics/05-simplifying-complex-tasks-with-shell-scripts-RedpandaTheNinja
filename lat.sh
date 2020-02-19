#!/bin/bash
#Kevin Lee
#remove previous file 
rm AllStation.xy
for file in StationData/*
do 
	awk '/Longitude/ {print -1 * $NF}' StationData/Station_*.txt > Long.list
	awk '/Latitude/ {print 1 * $NF}' StationData/Station_*.txt > Lat.list
	done

paste Long.list Lat.list > AllStation.xy
#remove residue 
rm *.list

