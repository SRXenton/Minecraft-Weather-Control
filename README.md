# Minecraft-Weather-Control
Minecraft datapack for own weather control, with option to make over scoreboard or dialog windows settings for the weather control<br>
<br>
Datapack is made for Minecraft Java<br>
Branches:
- Main: The actual verion is for Minecraft Java V26.1.x+<br>
- v1.21.6-1.21.10: MC Version 1.21.6 to 1.21.10 and tested<br>
- V1.21.11+: MC Version 1.21.11, 26.1, 26.1.1 and tested<br>

This datapack replace the control from Minecraft weather cycle.<br>
In this Version weather cycle only between Clear and Rain. It is possible Thunder is upcomming in the future<br>
It is possible to change the settings ingame, without programming experience in Minecraft datapacks. The commands for that, are in the end of this readme.<br>
The duration for clear and raining is a random value between values.<br>
<br>
One day (Day and Night) in Minecraft has 20 minutes or 24000 Ticks. The Datapack use Ticks. One Ingame hours are 1000 Ticks.<br>
<br>
To change the time, you can do it in a dialogwindow, or you can do it over commands<br>


# -------------------------------------<br>
# Manual
You find it now on the wikipage:<br>
- Until data pack version V26.4.1: [Link](https://github.com/SRXenton/Minecraft-Weather-Control/wiki/Manual-until-Weather-Control-V26.4.1)
- Since data pack version V26.5.0: [Link](https://github.com/SRXenton/Minecraft-Weather-Control/wiki/Manual-since-Weather-Control-V26.5.0)

Videos:<br>
DE: https://youtu.be/gCr6tE1-Xog<br>
EN: https://www.youtube.com/watch?v=aAZFINrGljc<br>

# -------------------------------------<br>
# Installation, start and settings<br>

Install Path:<br>
Minecraft Local -> saves -> (World) -> datapacks<br>

Minecraft Server -> (World) -> datapack<br>

Check in Minecraft, is datapack installed: /datapack list<br>
This command show a list of all installed datapacks. The list must include [file/Weather-Control (world)]. If this not the case, check the installation path.<br>
Until Datapack Version 
Next step, run command: /function weather-control:w_c__init_weather<br>
With this command, will set all scoreboard values and the datapack starts to work<br>
