data remove storage weather:values temp
data merge storage weather:values {temp:{}}

execute store result storage weather:values temp.minClear int 1 run scoreboard players get _hoursClearMin WeatherCycle
execute store result storage weather:values temp.maxClear int 1 run scoreboard players get _hoursClearMax WeatherCycle
execute store result storage weather:values temp.minRain int 1 run scoreboard players get _hoursRainMin WeatherCycle
execute store result storage weather:values temp.maxRain int 1 run scoreboard players get _hoursRainMax WeatherCycle


function weather-control:w_c__pages/w_c__page0 with storage weather:values temp
