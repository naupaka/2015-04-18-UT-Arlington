#!/bin/bash

DATE=$(date +"%Y-%m-%d")

for filename in *.cc.*
do
	echo mv $filename ${filename/.cc./.$DATE.cc.}
done
