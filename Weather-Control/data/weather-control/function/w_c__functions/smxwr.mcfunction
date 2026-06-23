### set maximum weather rain

$execute if score @s WeatherCycleV matches ..$(m) run tellraw @s "Value for maximum weather rain is equal or lesser than for minimum weather rain \n No changings !!!"
$execute if score @s WeatherCycleV matches ..$(m) run return -1

execute if score @s WeatherCycleV matches 1001.. run tellraw @s "Value for maximum weather rain is greater than 1000 \n No changings !!!"
execute if score @s WeatherCycleV matches 1001.. run return -1

execute store result storage weather:values data.rtMinutesMaximumWeatherIsRain int 1 run scoreboard players get @s WeatherCycleV

