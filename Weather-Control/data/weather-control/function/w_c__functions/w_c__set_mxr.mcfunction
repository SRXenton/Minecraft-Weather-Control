# execute store result storage weather:values data.maxToClear int 1000 run scoreboard players get @s WeatherCycleV
execute store result score _hoursRainMax WeatherCycle run scoreboard players get @s WeatherCycleV

data modify storage weather:values temp.w set value ""

scoreboard players set @s WeatherCycleSP 1