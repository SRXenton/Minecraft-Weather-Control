execute as @p[scores={WeatherCycleV=1..}] if data storage weather:values {temp:{w:"mic"}} run function weather-control:w_c__functions/w_c__set_mic
execute as @p[scores={WeatherCycleV=1..}] if data storage weather:values {temp:{w:"mxc"}} run function weather-control:w_c__functions/w_c__set_mxc

execute as @p[scores={WeatherCycleV=1..}] if data storage weather:values {temp:{w:"mir"}} run function weather-control:w_c__functions/w_c__set_mir
execute as @p[scores={WeatherCycleV=1..}] if data storage weather:values {temp:{w:"mxr"}} run function weather-control:w_c__functions/w_c__set_mxr

execute as @p[scores={WeatherCycleSP=10}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.minToRain
execute as @p[scores={WeatherCycleSP=10}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.maxToRain
# execute as @p[scores={WeatherCycleSP=10}] run data modify storage weather:values temp.w set value "mic"
execute as @p[scores={WeatherCycleSP=10}] run function weather-control:w_c__pages/w_c__page10 with storage weather:values temp

execute as @p[scores={WeatherCycleSP=20}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.maxToRain
execute as @p[scores={WeatherCycleSP=20}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.minToRain
# execute as @p[scores={WeatherCycleSP=20}] run data modify storage weather:values temp.w set value "mxc"
execute as @p[scores={WeatherCycleSP=20}] run function weather-control:w_c__pages/w_c__page20 with storage weather:values temp

execute as @p[scores={WeatherCycleSP=30}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.minToClear
execute as @p[scores={WeatherCycleSP=30}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.maxToClear
# execute as @p[scores={WeatherCycleSP=30}] run data modify storage weather:values temp.w set value "mir"
execute as @p[scores={WeatherCycleSP=30}] run function weather-control:w_c__pages/w_c__page30 with storage weather:values temp

execute as @p[scores={WeatherCycleSP=40}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.maxToClear
execute as @p[scores={WeatherCycleSP=40}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.minToClear
execute as @p[scores={WeatherCycleSP=40}] run data modify storage weather:values temp.w set value "mxr"
execute as @p[scores={WeatherCycleSP=40}] run function weather-control:w_c__pages/w_c__page40 with storage weather:values temp

execute as @a[scores={WeatherCycleSP=1}] run function weather-control:w_c__functions/w_c__reset_pages