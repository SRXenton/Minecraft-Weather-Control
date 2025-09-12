# Set the Gamerule to disable weather cycle controled by Minecraft
gamerule doWeatherCycle false

# Remove a possible existing WeatherCycle scoreboard and create a new
scoreboard objectives remove WeatherCycle
scoreboard objectives add WeatherCycle dummy

# Clear Storage
data remove storage weather:values data
data merge storage weather:values {data:{minToClear:0, maxToClear:0, minToRain:0, maxToRain:0}}

## Set Values for Weather Control
# This are automatic set and calculate when datapack is running
scoreboard players set _nextWeatherClear WeatherCycle 0
scoreboard players set _nextWeatherRain WeatherCycle 0
scoreboard players set _isSwitch WeatherCycle 0

# Is Thunder possible: 1 -> true, 0 -> false
scoreboard players set _isThunderPossible WeatherCycle 1

# Values for calculate duration for clear, in ingame min and max hours
scoreboard players set _hoursClearMin WeatherCycle 120
scoreboard players set _hoursClearMax WeatherCycle 192

# Values for calculate duration for raining, in ingame min and max hours
scoreboard players set _hoursRainMin WeatherCycle 3
scoreboard players set _hoursRainMax WeatherCycle 8

# Ticks per ingame hours
scoreboard players set #hoursInTicks WeatherCycle 1000

# Values for calculate how often for thunder, in percent when it's raining - Not Active
scoreboard players set _percentOfPossiblityThunder WeatherCycle 10

# Values for calculate duration for thunder, in percent of raining duration  - Not Active
scoreboard players set _percentOfDurationThunderFromRain WeatherCycle 100


#Debug
#scoreboard objectives setdisplay sidebar WeatherCycle
