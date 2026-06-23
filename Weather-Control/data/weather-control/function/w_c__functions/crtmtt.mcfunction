### Calculate RealTimeMinutes To Ticks

# execute store result score _ticksClearMax WeatherCycle run data get storage weather:values data.rtMinutesMaximumWeatherIsClear
# scoreboard players operation _ticksClearMax WeatherCycle *= #60 WeatherCycle
# scoreboard players operation _ticksClearMax WeatherCycle *= #20 WeatherCycle

$execute store result score $(sbv) WeatherCycle run data get storage weather:values data.$(dsv)
$scoreboard players operation $(sbv) WeatherCycle *= #60 WeatherCycle
$scoreboard players operation $(sbv) WeatherCycle *= #20 WeatherCycle
