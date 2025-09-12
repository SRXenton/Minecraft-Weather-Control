# Calculate minimum ticks for weather clear to rain
scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
scoreboard players operation #op WeatherCycle *= _hoursClearMin WeatherCycle
execute store result storage weather:values data.minToRain int 1 run scoreboard players get #op WeatherCycle

# Calculate maximum ticks for weather clear to rain
scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
scoreboard players operation #op WeatherCycle *= _hoursClearMax WeatherCycle
execute store result storage weather:values data.maxToRain int 1 run scoreboard players get #op WeatherCycle

# Calculate minimum ticks for weather rain to clear
scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
scoreboard players operation #op WeatherCycle *= _hoursRainMin WeatherCycle
execute store result storage weather:values data.minToClear int 1 run scoreboard players get #op WeatherCycle

# Calculate maximum ticks for weather rain to clear
scoreboard players operation #op WeatherCycle = #hoursInTicks WeatherCycle
scoreboard players operation #op WeatherCycle *= _hoursRainMax WeatherCycle
execute store result storage weather:values data.maxToClear int 1 run scoreboard players get #op WeatherCycle

# Call function and take over values for random calculate
function weather:random with storage weather:values data
