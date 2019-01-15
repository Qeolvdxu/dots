#!/bin/sh

clock()
{
	date +%H:%M:%S-%D
}

battery()
{
	cat /sys/class/power_supply/BAT1/capacity
}

while true 
do
	BAR_INPUT="%{l}echo 'schoopy scoopy poopy wooopy'  %{c} Thinkpad T480  %{r}POWER|$(battery)% TIME|$(clock)	"
	echo $BAR_INPUT
	sleep 1
done
