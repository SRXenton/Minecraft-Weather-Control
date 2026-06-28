### set minimum weather rain

## Check value is greater or equal then maximum
$execute if score @s WeatherCycleV matches $(m).. run tellraw @s "Value for minimum weather rain is equal or greater than for maximum weather rain \n No changings !!!"
$execute if score @s WeatherCycleV matches $(m).. run return -1

## Write new value in data storage
execute store result storage weather:values data.rtMinutesMinimumWeatherIsRain int 1 run scoreboard players get @s WeatherCycleV

