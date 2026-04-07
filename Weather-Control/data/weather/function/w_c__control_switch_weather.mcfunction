
# Reduce every tick at one in scoreboard for next rain
execute if score _nextWeatherRain WeatherCycle matches 1.. run scoreboard players remove _nextWeatherRain WeatherCycle 1

# Reduce every tick at one in scoreboard for next clear
execute if score _nextWeatherClear WeatherCycle matches 1.. if score _nextWeatherRain WeatherCycle matches 0 run scoreboard players remove _nextWeatherClear WeatherCycle 1

# Functions for weather switch
execute if score _nextWeatherRain WeatherCycle matches 0 if score _isSwitch WeatherCycle matches 0 run function weather-control:w_c__to_rain
execute if score _nextWeatherClear WeatherCycle matches 0 if score _isSwitch WeatherCycle matches 1 run function weather-control:w_c__to_clear

# Function calculate new random values for weather switches
execute if score _nextWeatherClear WeatherCycle matches 0 if score _nextWeatherRain WeatherCycle matches 0 run function weather-control:w_c__calculate_for_random


## Debug:
# tellraw Xenton_de "Debug csw"