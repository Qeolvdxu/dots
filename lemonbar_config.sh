#!/bin/sh

clock()
{
	date +%H:%M:%S-%D
}

battery()
{
	echo "POWER:  "
	cat /sys/class/power_supply/BAT1/capacity
}

memory()
{
	cat  /proc/meminfo | grep MemAvailable:
	
}

cpu_usage()
{
	echo "CPU_USAGE:  "
	ps -A -o pcpu | tail -n+2 | paste -sd+ | bc
}

name()
{
	hostname
}

while true 
do
	BAR_INPUT="%{l} $(memory)   $(cpu_usage)% %{c} $(name) %{r} $(battery)% $(clock)	"
	echo $BAR_INPUT
	sleep 1
done
