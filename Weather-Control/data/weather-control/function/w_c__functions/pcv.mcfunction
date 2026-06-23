### Preparing Change Value
### Called in:

## From Page 10: Set minimum weather clear
execute if score @s WeatherCycleSP matches 11 run function weather-control:w_c__functions/psv {w:"rtMinutesMaximumWeatherIsClear"}
execute if score @s WeatherCycleSP matches 11 run function weather-control:w_c__functions/smiwc with storage weather:values temp

## From Page 20: Set maximum weather clear
execute if score @s WeatherCycleSP matches 21 run function weather-control:w_c__functions/psv {w:"rtMinutesMinimumWeatherIsClear"}
execute if score @s WeatherCycleSP matches 21 run function weather-control:w_c__functions/smxwc with storage weather:values temp

## From Page 30: Set minimum weather rain
execute if score @s WeatherCycleSP matches 31 run function weather-control:w_c__functions/psv {w:"rtMinutesMaximumWeatherIsRain"}
execute if score @s WeatherCycleSP matches 31 run function weather-control:w_c__functions/smiwr with storage weather:values temp

## From Page 40: Set maximum weather rain
execute if score @s WeatherCycleSP matches 41 run function weather-control:w_c__functions/psv {w:"rtMinutesMinimumWeatherIsRain"}
execute if score @s WeatherCycleSP matches 41 run function weather-control:w_c__functions/smxwr with storage weather:values temp

## Remove temp and scoreboard values
data remove storage weather:values temp
scoreboard players set @s WeatherCycleV 0

## Call Reset scoreboards
scoreboard players set @s WeatherCycleSP 1