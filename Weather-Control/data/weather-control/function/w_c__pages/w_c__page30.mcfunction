#execute unless entity @s[scores={WeatherCycleSP=10}] run return -1

data modify storage weather:values temp.w set value "mir"

scoreboard players enable @s WeatherCycleSP
scoreboard players enable @s WeatherCycleV

scoreboard players add @s WeatherCycleSP 1

$dialog show @s {\
    type:"minecraft:confirmation",\
    title:"Setting Weather Control",\
    body:[\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Change minimum value for Weather is RAIN"\
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
                text: "Range: 1 real minutes until $(m) real minutes and value must be lesser than maximum"\
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
        {type:"minecraft:text",key:"wcv",label:"Minimum Value",initial:"$(v)"}\
    ],\
    can_close_with_escape:true,\
    pause:false,\
    yes:{label:"Overtaken",action:{type:"minecraft:dynamic/run_command",template:"trigger WeatherCycleV set \u0024(wcv)"}},\
    no:{label:"Close without changes",action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 1"}}\
}


