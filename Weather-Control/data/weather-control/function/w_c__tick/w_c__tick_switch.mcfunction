## This function is called by tick.json for setting pages (SP)

# Prepare storage
execute as @p[scores={WeatherCycleV=1..}] run function weather-control:w_c__functions/w_c__preparing_change_value

# Page 10: Minimum Clear
execute as @p[scores={WeatherCycleSP=10}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.minToRain
execute as @p[scores={WeatherCycleSP=10}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.maxToRain
execute as @p[scores={WeatherCycleSP=10}] run function weather-control:w_c__pages/w_c__page10 with storage weather:values temp

# Page 20: Maximum Clear
execute as @p[scores={WeatherCycleSP=20}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.maxToRain
execute as @p[scores={WeatherCycleSP=20}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.minToRain
execute as @p[scores={WeatherCycleSP=20}] run function weather-control:w_c__pages/w_c__page20 with storage weather:values temp

# Page 30: Minimum Rain
execute as @p[scores={WeatherCycleSP=30}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.minToClear
execute as @p[scores={WeatherCycleSP=30}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.maxToClear
execute as @p[scores={WeatherCycleSP=30}] run function weather-control:w_c__pages/w_c__page30 with storage weather:values temp

# Page 40: Maximum Rain
execute as @p[scores={WeatherCycleSP=40}] store result storage weather:values temp.v int 0.001 run data get storage weather:values data.maxToClear
execute as @p[scores={WeatherCycleSP=40}] store result storage weather:values temp.m int 0.001 run data get storage weather:values data.minToClear
execute as @p[scores={WeatherCycleSP=40}] run function weather-control:w_c__pages/w_c__page40 with storage weather:values temp

# Reset scorebord
execute as @a[scores={WeatherCycleSP=1}] run function weather-control:w_c__functions/w_c__reset_pages