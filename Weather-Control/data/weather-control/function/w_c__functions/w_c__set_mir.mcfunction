# execute store result storage weather:values data.minToClear int 1000 run scoreboard players get @s WeatherCycleV

$execute if score @s WeatherCycleV matches $(maxRain).. run tellraw @s "Value for minimum weather rain is equal or greater than for maximum weather rain \n No changings !!!"
$execute if score @s WeatherCycleV matches $(maxRain).. run return -1

execute store result score _hoursRainMin WeatherCycle run scoreboard players get @s WeatherCycleV

