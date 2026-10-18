### toggle gamerule send_command_feedback

execute store result score _gr WeatherCycleSP run gamerule send_command_feedback

execute if score _gr WeatherCycleSP matches 1 run gamerule send_command_feedback false
execute unless score _gr WeatherCycleSP matches 1 run gamerule send_command_feedback true
