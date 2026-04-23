## Set random values in scoreboard
## Note: move in functions possible??
$execute store result score _nextWeatherRain WeatherCycle run random value $(minToRain)..$(maxToRain)
$execute store result score _nextWeatherClear WeatherCycle run random value $(minToClear)..$(maxToClear)