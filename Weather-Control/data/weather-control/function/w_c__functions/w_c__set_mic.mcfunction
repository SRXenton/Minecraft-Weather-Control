#execute store result storage weather:values data.minToRain int 1000 run scoreboard players get @s WeatherCycleV

$execute if score @s WeatherCycleV matches $(maxClear).. run tellraw @s "Value for minimum weather clear is equal or greater than for maximum weather clear \n No changings !!!"
$execute if score @s WeatherCycleV matches $(maxClear).. run return -1

execute store result score _hoursClearMin WeatherCycle run scoreboard players get @s WeatherCycleV

