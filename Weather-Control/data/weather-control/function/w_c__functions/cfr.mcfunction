### calculate_for_random
### Calculate storage values and write in storage

## Calculate minimum ticks for weather clear to rain
# scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
# scoreboard players operation #op WeatherCycle *= _hoursClearMin WeatherCycle
# execute store result storage weather:values data.minToRain int 1 run scoreboard players get #op WeatherCycle

## Calculate maximum ticks for weather clear to rain
# scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
# scoreboard players operation #op WeatherCycle *= _hoursClearMax WeatherCycle
# execute store result storage weather:values data.maxToRain int 1 run scoreboard players get #op WeatherCycle

## Calculate minimum ticks for weather rain to clear
# scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
# scoreboard players operation #op WeatherCycle *= _hoursRainMin WeatherCycle
# execute store result storage weather:values data.minToClear int 1 run scoreboard players get #op WeatherCycle

## Calculate maximum ticks for weather rain to clear
# scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
# scoreboard players operation #op WeatherCycle *= _hoursRainMax WeatherCycle
# execute store result storage weather:values data.maxToClear int 1 run scoreboard players get #op WeatherCycle

## Call function and take over values for random calculate
# function weather-control:w_c__functions/r with storage weather:values data

function weather-control:w_c__functions/crtmtt {sbv:"_ticksClearMin", dsv:"rtMinutesMinimumWeatherIsClear"}
function weather-control:w_c__functions/crtmtt {sbv:"_ticksClearMax", dsv:"rtMinutesMaximumWeatherIsClear"}
function weather-control:w_c__functions/crtmtt {sbv:"_ticksRainMin", dsv:"rtMinutesMinimumWeatherIsRain"}
function weather-control:w_c__functions/crtmtt {sbv:"_ticksRainMax", dsv:"rtMinutesMaximumWeatherIsRain"}

data modify storage weather:values temp set value {}

execute store result storage weather:values temp.maxClear int 1 run scoreboard players get _ticksClearMax WeatherCycle
execute store result storage weather:values temp.minClear int 1 run scoreboard players get _ticksClearMin WeatherCycle
execute store result storage weather:values temp.maxRain int 1 run scoreboard players get _ticksRainMax WeatherCycle
execute store result storage weather:values temp.minRain int 1 run scoreboard players get _ticksRainMin WeatherCycle

function weather-control:w_c__functions/r with storage weather:values temp

data remove storage weather:values temp
