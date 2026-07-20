### Preparing dialog p0

execute store result score _gr WeatherCycleSP run gamerule send_command_feedback

execute if score _gr WeatherCycleSP matches 1 run data modify storage weather:values temp.gamerule set value "inactive"
execute unless score _gr WeatherCycleSP matches 1 run data modify storage weather:values temp.gamerule set value "active"

