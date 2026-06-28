### Init function to initialise weather control
## Set the Gamerule to disable weather cycle controled by Minecraft
gamerule advance_weather false

## Remove a possible existing WeatherCycle scoreboard and create a new
scoreboard objectives remove WeatherCycle
scoreboard objectives remove WeatherCycleSP
scoreboard objectives remove WeatherCycleV
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add WeatherCycleSP trigger
scoreboard objectives add WeatherCycleV trigger

## Clear Storage
data remove storage weather:values data
data remove storage weather:values temp
data merge storage weather:values {data:{rtMinutesMinimumWeatherIsClear:120, rtMinutesMaximumWeatherIsClear:180, rtMinutesMinimumWeatherIsRain:10, rtMinutesMaximumWeatherIsRain:15}}

### Set Values for Weather Control
## This are automatic set and calculate when datapack is running
scoreboard players set _nextWeatherClear WeatherCycle 0
scoreboard players set _nextWeatherRain WeatherCycle 0
scoreboard players set _isSwitch WeatherCycle 0

###---------------------------------- Not in use
## Is Thunder possible: 1 -> true, 0 -> false
#scoreboard players set _isThunderPossible WeatherCycle 0
###----------------------------------

## Values for calculate duration for clear, in ingame min and max hours
scoreboard players set _ticksClearMin WeatherCycle 0
scoreboard players set _ticksClearMax WeatherCycle 0

## Values for calculate duration for raining, in ingame min and max hours
scoreboard players set _ticksRainMin WeatherCycle 0
scoreboard players set _ticksRainMax WeatherCycle 0

## Ticks per ingame hours
scoreboard players set #60 WeatherCycle 60
scoreboard players set #20 WeatherCycle 20

## Change to weather clear
weather clear

## Calculate random values and fill scoreboard WeatherCycle
function weather-control:w_c__functions/cfr


###---------------------------------- Not in use
## Values for calculate how often for thunder, in percent when it's raining - Not Active
#scoreboard players set _percentOfPossiblityThunder WeatherCycle 10
#
## Values for calculate duration for thunder, in percent of raining duration  - Not Active
#scoreboard players set _percentOfDurationThunderFromRain WeatherCycle 100
###----------------------------------


## Set value in scoreboard, weather control active
scoreboard players set #is_active WeatherCycle 1

## Give text output to subject runs this function
tellraw @s [{text:"Datapack: ",color: "gold"},{text:"Weather Control is ", color:"white"},{text:"initialized",color:"green"}]


##Debug
# scoreboard objectives setdisplay sidebar WeatherCycle
