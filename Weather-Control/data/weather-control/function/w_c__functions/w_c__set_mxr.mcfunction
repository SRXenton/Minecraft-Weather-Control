# execute store result storage weather:values data.maxToClear int 1000 run scoreboard players get @s WeatherCycleV

$execute if score @s WeatherCycleV matches ..$(minRain) run tellraw @s "Value for maximum weather rain is equal or lesser than for minimum weather rain \n No changings !!!"
$execute if score @s WeatherCycleV matches ..$(minRain) run return -1

execute store result score _hoursRainMax WeatherCycle run scoreboard players get @s WeatherCycleV

