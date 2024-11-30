#!/bin/bash

# time since install
# ./time_calc.sh $(date -d "$(stat / | awk '/Birth: /{print $2 " " substr($3,1,8)}')" +%s)

# input ts in unix timestamp
ts_original=$1 
current_time=$(date +%s)

# constants
YEAR=31536000 
MONTH=2592000 
DAY=86400 
HOUR=3600 
MINUTE=60 

# time calculations
ts=$((current_time-ts_original))

y_passed=$((ts/YEAR))

ts=$((ts-y_passed*YEAR))
mo_passed=$((ts/MONTH)) 

ts=$((ts-mo_passed*MONTH))
d_passed=$((ts/DAY)) 

ts=$((ts-d_passed*DAY))
h_passed=$((ts/HOUR))

ts=$((ts-h_passed*HOUR))
min_passed=$((ts/MINUTE))

sec_passed=$((ts-min_passed*MINUTE))

# print
echo -e "TIME SINCE $(date -d @$ts_original)\n$y_passed YEAR(s) $mo_passed MONTH(s) $d_passed DAY(s) $h_passed HOUR(s) $min_passed MINUTE(s) $sec_passed SECOND(s)"
