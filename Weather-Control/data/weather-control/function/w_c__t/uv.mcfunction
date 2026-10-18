### Update from (to) 26.5.0 up to 26.5.1

## Add new fake player
execute unless score _ticksClearMin WeatherCycle matches 0.. run scoreboard players set _ticksClearMin WeatherCycle 0
execute unless score _ticksClearMax WeatherCycle matches 0.. run scoreboard players set _ticksClearMax WeatherCycle 0
execute unless score _ticksRainMin WeatherCycle matches 0.. run scoreboard players set _ticksRainMin WeatherCycle 0
execute unless score _ticksRainMax WeatherCycle matches 0.. run scoreboard players set _ticksRainMax WeatherCycle 0

execute unless score #60 WeatherCycle matches 0.. run scoreboard players set #60 WeatherCycle 60
execute unless score #20 WeatherCycle matches 0.. run scoreboard players set #20 WeatherCycle 20

## Remove old fake player
execute if score _hoursClearMin WeatherCycle matches 0.. run scoreboard players reset _hoursClearMin WeatherCycle
execute if score _hoursClearMax WeatherCycle matches 0.. run scoreboard players reset _hoursClearMax WeatherCycle
execute if score _hoursRainMin WeatherCycle matches 0.. run scoreboard players reset _hoursRainMin WeatherCycle
execute if score _hoursRainMax WeatherCycle matches 0.. run scoreboard players reset _hoursRainMax WeatherCycle
execute if score #hoursInTicks WeatherCycle matches 0.. run scoreboard players reset #hoursInTicks WeatherCycle

## Add new data storage values
execute unless data storage weather:values data.rtMinutesMinimumWeatherIsClear run data modify storage weather:values data.rtMinutesMinimumWeatherIsClear set from storage weather:values data.minToRain
execute unless data storage weather:values data.rtMinutesMaximumWeatherIsClear run data modify storage weather:values data.rtMinutesMaximumWeatherIsClear set from storage weather:values data.maxToRain
execute unless data storage weather:values data.rtMinutesMinimumWeatherIsRain run data modify storage weather:values data.rtMinutesMinimumWeatherIsRain set from storage weather:values data.minToClear
execute unless data storage weather:values data.rtMinutesMaximumWeatherIsRain run data modify storage weather:values data.rtMinutesMaximumWeatherIsRain set from storage weather:values data.maxToClear

## Remove old data storage values
execute if data storage weather:values data.minToClear run data remove storage weather:values data.minToClear
execute if data storage weather:values data.maxToClear run data remove storage weather:values data.maxToClear
execute if data storage weather:values data.minToRain run data remove storage weather:values data.minToRain
execute if data storage weather:values data.maxToRain run data remove storage weather:values data.maxToRain

