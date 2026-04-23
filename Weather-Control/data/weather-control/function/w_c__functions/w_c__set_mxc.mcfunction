# execute store result storage weather:values data.maxToRain int 1000 run scoreboard players get @s WeatherCycleV

$execute if score @s WeatherCycleV matches ..$(minClear) run tellraw @s "Value for maximum weather clear is equal or lesser than for minimum weather clear \n No changings !!!"
$execute if score @s WeatherCycleV matches ..$(minClear) run return -1

execute store result score _hoursClearMax WeatherCycle run scoreboard players get @s WeatherCycleV

