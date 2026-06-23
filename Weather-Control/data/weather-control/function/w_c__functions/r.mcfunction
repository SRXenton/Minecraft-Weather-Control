### Random
### Calculate random values and write it in scoreboard

$execute store result score _nextWeatherRain WeatherCycle run random value $(minClear)..$(maxClear)
$execute store result score _nextWeatherClear WeatherCycle run random value $(minRain)..$(maxRain)