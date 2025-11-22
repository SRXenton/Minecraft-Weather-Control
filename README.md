# Minecraft-Weather-Control
Minecraft datapack for own weather control, with option to make over scoreboard settings for the weather control

Datapack is made for Minecraft Java - Version 1.21.6 to 1.21.10 and tested

This datapack replace the control from Minecraft weather cycle.
In this Version weather cycle only between Clear and Rain. Thunder is upcomming in other versions
It is possible to change the settings ingame, without programming experience in Minecraft datapacks. The commands for that, are in the end of this readme.
The duration for clear and raining is a random value between values.

One day (Day and Night) in Minecraft has 20 minutes or 24000 Ticks. The Datapack use Ticks. One Ingame hours are 1000 Ticks.

Duration for weather is clear:
_hoursClearMin -> Minimum time in ingame hours
_hoursClearMax -> Maximum time in ingame hours

Between this both values, will be create a random value for the duration weather is clear


Duration for weather is raining:
_hoursRainMin -> Minimum time in ingame hours
_hoursRainMax -> Maximum time in ingame hours

Between this both values, will be create a random value for the duration weather is raining

-------------------------------------
Video - Tutorial
-------------------------------------
DE: https://youtu.be/gCr6tE1-Xog

-------------------------------------
Installation, start and settings
-------------------------------------


Install Path:
Minecraft Local -> saves -> (World) -> datapacks

Minecraft Server -> (World) -> datapack

Check in Minecraft, is datapack installed: /datapack list
This command show a list of all installed datapacks. The list must include [file/Weather-Control (world)]. If this not the case, check the installation path.

Next step, run command: /function weather:init_weather
With this command, will set all scoreboard values and the datapack starts to work

Commands for settings:
Replace (values) with number without point.

Ingame Hours for the weather is clear, between min and max.
/scoreboard players set _hoursClearMin WeatherCycle (value)
/scoreboard players set _hoursClearMax WeatherCycle (value)

Ingame Hours for the weather is raining, between min and max.
/scoreboard players set _hoursRainMin WeatherCycle (value)
/scoreboard players set _hoursRainMax WeatherCycle (value)

