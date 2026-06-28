### calculate_for_random
### Calculate storage values and write in scoreboard


## Calculate minimum ticks for weather clear
function weather-control:w_c__functions/crtmtt {sbv:"_ticksClearMin", dsv:"rtMinutesMinimumWeatherIsClear"}
## Calculate maximum ticks for weather clear
function weather-control:w_c__functions/crtmtt {sbv:"_ticksClearMax", dsv:"rtMinutesMaximumWeatherIsClear"}
## Calculate minimum ticks for weather rain
function weather-control:w_c__functions/crtmtt {sbv:"_ticksRainMin", dsv:"rtMinutesMinimumWeatherIsRain"}
## Calculate maximum ticks for weather rain
function weather-control:w_c__functions/crtmtt {sbv:"_ticksRainMax", dsv:"rtMinutesMaximumWeatherIsRain"}

## Crate in data storage the object temp
data modify storage weather:values temp set value {}

## Copy values from scoreboard in data storage temp
execute store result storage weather:values temp.maxClear int 1 run scoreboard players get _ticksClearMax WeatherCycle
execute store result storage weather:values temp.minClear int 1 run scoreboard players get _ticksClearMin WeatherCycle
execute store result storage weather:values temp.maxRain int 1 run scoreboard players get _ticksRainMax WeatherCycle
execute store result storage weather:values temp.minRain int 1 run scoreboard players get _ticksRainMin WeatherCycle

## Call function for random calculate and write it in scoreboard
function weather-control:w_c__functions/r with storage weather:values temp

## Remove temp from data storage
data remove storage weather:values temp
