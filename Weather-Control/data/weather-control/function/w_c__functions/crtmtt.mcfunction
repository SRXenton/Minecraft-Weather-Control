### Calculate RealTimeMinutes To Ticks

$execute store result score $(sbv) WeatherCycle run data get storage weather:values data.$(dsv)
$scoreboard players operation $(sbv) WeatherCycle *= #60 WeatherCycle
$scoreboard players operation $(sbv) WeatherCycle *= #20 WeatherCycle
