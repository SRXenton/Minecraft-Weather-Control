execute store result storage weather:values temp.minClear int 1 run scoreboard players get _hoursClearMin WeatherCycle
execute store result storage weather:values temp.maxClear int 1 run scoreboard players get _hoursClearMax WeatherCycle
execute store result storage weather:values temp.minRain int 1 run scoreboard players get _hoursRainMin WeatherCycle
execute store result storage weather:values temp.maxRain int 1 run scoreboard players get _hoursRainMax WeatherCycle

execute if data storage weather:values {temp:{w:"mic"}} run function weather-control:w_c__functions/w_c__set_mic with storage weather:values temp
execute if data storage weather:values {temp:{w:"mxc"}} run function weather-control:w_c__functions/w_c__set_mxc with storage weather:values temp

execute if data storage weather:values {temp:{w:"mir"}} run function weather-control:w_c__functions/w_c__set_mir with storage weather:values temp
execute if data storage weather:values {temp:{w:"mxr"}} run function weather-control:w_c__functions/w_c__set_mxr with storage weather:values temp

data modify storage weather:values temp.w set value ""

scoreboard players set @s WeatherCycleSP 1