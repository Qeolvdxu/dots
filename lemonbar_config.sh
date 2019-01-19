#!/bin/sh

clock()
{
	date +%H:%M:%S-%D
}

battery()
{
	cat /sys/class/power_supply/BAT1/capacity
}

memory()
{
	cat  /proc/meminfo | grep MemAvailable:
	
}

name()
{
	hostname
}

while true 
do
	BAR_INPUT="%{l} $(memory)  %{c} $(name) %{r}POWER|$(battery)% TIME|$(clock)	"
	echo $BAR_INPUT
	sleep 1
done
