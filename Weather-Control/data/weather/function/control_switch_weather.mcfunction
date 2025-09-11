execute if score _nextWeatherRain WeatherCycle matches 1.. run scoreboard players remove _nextWeatherRain WeatherCycle 1
execute if score _nextWeatherClear WeatherCycle matches 1.. if score _nextWeatherRain WeatherCycle matches 0 run scoreboard players remove _nextWeatherClear WeatherCycle 1

execute if score _nextWeatherRain WeatherCycle matches 0 if score _isSwitch WeatherCycle matches 0 run function weather:to_rain
execute if score _nextWeatherClear WeatherCycle matches 0 if score _isSwitch WeatherCycle matches 1 run function weather:to_clear

execute if score _nextWeatherClear WeatherCycle matches 0 if score _nextWeatherRain WeatherCycle matches 0 run function weather:set_random
