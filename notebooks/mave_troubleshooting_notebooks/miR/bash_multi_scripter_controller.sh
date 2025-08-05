#!/usr/bin/env bash

for i in $(ps -eo user,comm,pcpu,pid --sort -pcpu | grep ssobti | grep python3.10 | awk '{if($3 >= 100){{print $4}}}')
do
	nohup cpulimit -l 600 -p "$i" &
done


