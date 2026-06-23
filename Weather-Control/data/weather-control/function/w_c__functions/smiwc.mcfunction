### set minimum weather clear

## Check value is greater or equal then maximum
$execute if score @s WeatherCycleV matches $(m).. run tellraw @s "Value for minimum weather clear is equal or greater than for maximum weather clear \n No changings !!!"
$execute if score @s WeatherCycleV matches $(m).. run return -1

## Write new value in data storage
execute store result storage weather:values data.rtMinutesMinimumWeatherIsClear int 1 run scoreboard players get @s WeatherCycleV
