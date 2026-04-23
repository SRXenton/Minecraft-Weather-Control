## Dialog for: Maximum weather is raining

# When jump in this function, without come over main page, exit function
execute unless entity @s[scores={WeatherCycleSP=40}] run return -1

# Set marker for page
data modify storage weather:values temp.w set value "mxr"
scoreboard players add @s WeatherCycleSP 1

# Enable trigger
scoreboard players enable @s WeatherCycleSP
scoreboard players enable @s WeatherCycleV

# Show dialog
$dialog show @s {\
    type:"minecraft:confirmation",\
    title:"Setting Weather Control",\
    body:[\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Change maximum value for Weather is RAIN"\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: ""\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Range: Greater $(m) real minutes until 1000 real minutes"\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "! Only Integer values possible !"\
            }\
        },\
    ],\
    inputs:[\
        {type:"minecraft:text",key:"wcv",label:"Maximum Value",initial:"$(v)"}\
    ],\
    can_close_with_escape:true,\
    pause:false,\
    yes:{label:"Overtaken",action:{type:"minecraft:dynamic/run_command",template:"trigger WeatherCycleV set \u0024(wcv)"}},\
    no:{label:"Close without changes",action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 1"}}\
}


