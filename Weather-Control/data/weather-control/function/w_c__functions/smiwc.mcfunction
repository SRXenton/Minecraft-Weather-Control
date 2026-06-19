### set minimum weather clear


$execute if score @s WeatherCycleV matches $(maxClear).. run tellraw @s "Value for minimum weather clear is equal or greater than for maximum weather clear \n No changings !!!"
$execute if score @s WeatherCycleV matches $(maxClear).. run return -1

execute store result score _hoursClearMin WeatherCycle run scoreboard players get @s WeatherCycleV

