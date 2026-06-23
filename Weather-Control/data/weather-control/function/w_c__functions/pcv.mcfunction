### Preparing Change Value
### Called in:

# execute store result storage weather:values temp.minClear int 1 run scoreboard players get _hoursClearMin WeatherCycle
# execute store result storage weather:values temp.maxClear int 1 run scoreboard players get _hoursClearMax WeatherCycle
# execute store result storage weather:values temp.minRain int 1 run scoreboard players get _hoursRainMin WeatherCycle
# execute store result storage weather:values temp.maxRain int 1 run scoreboard players get _hoursRainMax WeatherCycle

# execute if data storage weather:values {temp:{w:"mic"}} run function weather-control:w_c__functions/smiwc with storage weather:values temp
# execute if data storage weather:values {temp:{w:"mxc"}} run function weather-control:w_c__functions/smxwc with storage weather:values temp

# execute if data storage weather:values {temp:{w:"mir"}} run function weather-control:w_c__functions/smiwr with storage weather:values temp
# execute if data storage weather:values {temp:{w:"mxr"}} run function weather-control:w_c__functions/smxwr with storage weather:values temp

execute if score @s WeatherCycleSP matches 11 run function weather-control:w_c__functions/psv {w:"rtMinutesMaximumWeatherIsClear"}
execute if score @s WeatherCycleSP matches 11 run function weather-control:w_c__functions/smiwc with storage weather:values temp

execute if score @s WeatherCycleSP matches 21 run function weather-control:w_c__functions/psv {w:"rtMinutesMinimumWeatherIsClear"}
execute if score @s WeatherCycleSP matches 21 run function weather-control:w_c__functions/smxwc with storage weather:values temp

execute if score @s WeatherCycleSP matches 31 run function weather-control:w_c__functions/psv {w:"rtMinutesMaximumWeatherIsRain"}
execute if score @s WeatherCycleSP matches 31 run function weather-control:w_c__functions/smiwr with storage weather:values temp

execute if score @s WeatherCycleSP matches 41 run function weather-control:w_c__functions/psv {w:"rtMinutesMinimumWeatherIsRain"}
execute if score @s WeatherCycleSP matches 41 run function weather-control:w_c__functions/smxwr with storage weather:values temp

data remove storage weather:values temp
scoreboard players set @s WeatherCycleV 0

scoreboard players set @s WeatherCycleSP 1