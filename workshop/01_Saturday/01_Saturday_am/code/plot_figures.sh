#!/bin/bash

for filename in clean/*.txt
do
    echo Plotting $filename
    Rscript Plot_pop_script.R $filename
done

