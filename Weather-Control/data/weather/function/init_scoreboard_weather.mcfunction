gamerule doWeatherCycle false

scoreboard objectives remove WeatherCycle
scoreboard objectives add WeatherCycle dummy

scoreboard players set _nextWeatherClear WeatherCycle 0
scoreboard players set _nextWeatherRain WeatherCycle 0
scoreboard players set _isSwitch WeatherCycle 0
