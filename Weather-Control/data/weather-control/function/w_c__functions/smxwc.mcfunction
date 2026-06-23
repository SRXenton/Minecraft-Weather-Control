### set maximum weather clear

$execute if score @s WeatherCycleV matches ..$(m) run tellraw @s "Value for maximum weather clear is equal or lesser than for minimum weather clear \n No changings !!!"
$execute if score @s WeatherCycleV matches ..$(m) run return -1

execute store result storage weather:values data.rtMinutesMaximumWeatherIsClear int 1 run scoreboard players get @s WeatherCycleV

