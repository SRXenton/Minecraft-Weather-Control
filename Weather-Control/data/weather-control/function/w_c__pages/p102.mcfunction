tellraw @a "P102"

execute if score _gr WeatherCycleSP matches 1 run gamerule send_command_feedback false
execute unless score _gr WeatherCycleSP matches 1 run gamerule send_command_feedback true

scoreboard players set @s WeatherCycleSP 0

execute as @s run function weather-control:w_c___settings