# Minecraft-Weather-Control
Minecraft datapack for own weather control, with option to make over scoreboard or dialog windows settings for the weather control<br>
<br>
Datapack is made for Minecraft Java:<br>
    The actual verion (for V26.1.2) is in the main branch,<br>
    Version 1.21.6 to 1.21.10 and tested, you find it in branch v1.21.6-1.21.10,,<br>
    Version 1.21.11, 26.1, 26.1.1 is find in V1.21.11+,,<br>
    Version 26.1, 26.1.1 and 26.1.1 is tested and you find it in main branch<br>

This datapack replace the control from Minecraft weather cycle.<br>
In this Version weather cycle only between Clear and Rain. Thunder is upcomming in the future<br>
It is possible to change the settings ingame, without programming experience in Minecraft datapacks. The commands for that, are in the end of this readme.<br>
The duration for clear and raining is a random value between values.<br>
<br>
One day (Day and Night) in Minecraft has 20 minutes or 24000 Ticks. The Datapack use Ticks. One Ingame hours are 1000 Ticks.<br>
<br>
<br>
# Dialogwindow:<br>
You can see here the minimum and maximum values in real time minutes for the duration wether is clear and raining.<br>
Additional it is possible to set here the values<br>
<br>
# Commands:<br>
Duration for weather is clear:<br>
_hoursClearMin -> Minimum real time in ingame hours<br>
_hoursClearMax -> Maximum real time in ingame hours<br>
<br>
Between this both values, will be create a random value for the duration weather is clear<br>
<br>
<br>
Duration for weather is raining:<br>
_hoursRainMin -> Minimum real time in ingame hours<br>
_hoursRainMax -> Maximum real time in ingame hours<br>
<br>
Between this both values, will be create a random value for the duration weather is raining<br>

# -------------------------------------<br>
# Video - Tutorial<br>
DE: https://youtu.be/gCr6tE1-Xog

# -------------------------------------<br>
# Installation, start and settings<br>

Install Path:<br>
Minecraft Local -> saves -> (World) -> datapacks<br>

Minecraft Server -> (World) -> datapack<br>

Check in Minecraft, is datapack installed: /datapack list<br>
This command show a list of all installed datapacks. The list must include [file/Weather-Control (world)]. If this not the case, check the installation path.<br>

Next step, run command: /function weather-control:w_c__init_weather<br>
With this command, will set all scoreboard values and the datapack starts to work<br>

Dialogwindow for Setting<br>
/function weather-control:w_c__settings<br>
Here you can see all values for min and max, and you can set the values direct here in this dialog<br>

# Alternative:<br>
Commands for settings over chat:<br>
Replace (values) with integer, number without point.<br>

Ingame Hours for the weather is clear, between min and max.<br>
/scoreboard players set _hoursClearMin WeatherCycle (value)<br>
/scoreboard players set _hoursClearMax WeatherCycle (value)<br>

Ingame Hours for the weather is raining, between min and max.<br>
/scoreboard players set _hoursRainMin WeatherCycle (value)<br>
/scoreboard players set _hoursRainMax WeatherCycle (value)<br>

