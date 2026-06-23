### Tick Switch
### This function is called by tick.json for setting pages (SP)

## Prepare storage: Preparing Change Value
execute as @p[scores={WeatherCycleV=1..}] run function weather-control:w_c__functions/pcv

## Page 10: Minimum Clear
execute as @p[scores={WeatherCycleSP=10}] run function weather-control:w_c__pages/p10 with storage weather:values data

## Page 20: Maximum Clear
execute as @p[scores={WeatherCycleSP=20}] run function weather-control:w_c__pages/p20 with storage weather:values data

## Page 30: Minimum Rain
execute as @p[scores={WeatherCycleSP=30}] run function weather-control:w_c__pages/p30 with storage weather:values data

## Page 40: Maximum Rain
execute as @p[scores={WeatherCycleSP=40}] run function weather-control:w_c__pages/p40 with storage weather:values data

## Reset scorebord and Pages
execute as @a[scores={WeatherCycleSP=1}] run function weather-control:w_c__functions/rp