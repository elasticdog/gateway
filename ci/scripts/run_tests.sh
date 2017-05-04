#!/usr/bin/env bash

env | sort

SUCCESS_RATE=80
printf 'percentage of runs that succeed: %s%%\n' "$SUCCESS_RATE"

WORK_DURATION=25
printf 'pretending to work for %i seconds... ' "$WORK_DURATION"
sleep $WORK_DURATION
printf 'done\n'

PASSING_TESTS=$(( (RANDOM % 100)  + 1 ))
printf 'simulated test result status... '
if [[ $PASSING_TESTS -le $SUCCESS_RATE ]]; then
	printf 'SUCCESS\n'
	exit 0
else
	printf 'FAILURE\n'
	exit 1
fi
