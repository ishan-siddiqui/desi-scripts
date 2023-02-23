#!/bin/bash

start_year=2017
end_year=2022

for (( year=$start_year; year<=$end_year; year++ ))
do
    for month in "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"
    do
        folder_name="$month"_"$year"
        mkdir "$folder_name"
        echo "Created folder: $folder_name"
    done
done
