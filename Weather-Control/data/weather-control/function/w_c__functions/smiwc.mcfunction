### set minimum weather clear


$execute if score @s WeatherCycleV matches $(m).. run tellraw @s "Value for minimum weather clear is equal or greater than for maximum weather clear \n No changings !!!"
$execute if score @s WeatherCycleV matches $(m).. run return -1

# execute store result score _hoursClearMin WeatherCycle run scoreboard players get @s WeatherCycleV
execute store result storage weather:values data.rtMinutesMinimumWeatherIsClear int 1 run scoreboard players get @s WeatherCycleV
