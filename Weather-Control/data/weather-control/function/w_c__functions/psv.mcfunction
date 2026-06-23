### Preparing Set Value
### Copy scoreboard value in data storage temp.v and temp.m on base on macros

execute store result storage weather:values temp.v int 1 run scoreboard players get @s WeatherCycleV
$data modify storage weather:values temp.m set from storage weather:values data.$(w)