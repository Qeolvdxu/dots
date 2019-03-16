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
	echo "MEM_USAGE:  "
	free | grep Mem | awk '{print $3/$2 * 100.0}'
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
	BAR_INPUT="%{l} $(memory) %{B#44475a} %{F#f8f8f2}  $(cpu_usage)% %{c} $(name) %{r} $(battery)% $(clock)	"
	echo $BAR_INPUT
	sleep 1
done
