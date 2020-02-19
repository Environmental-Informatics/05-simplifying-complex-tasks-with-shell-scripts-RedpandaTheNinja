#!/bin/bash
#Kevin Lee 
#assin 05 
#Make target directory first. if direc. exist, it's all good 
#NOT an ERROR
mkdir HigherElevation
for file in StationData/*
do 
	awk  'FNR == 5 && $4 >200 {print FILENAME}' $file | xargs -I'{}' cp '{}' HigherElevation

	done

