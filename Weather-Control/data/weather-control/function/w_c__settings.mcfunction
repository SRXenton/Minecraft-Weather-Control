# Min Clear: Page 10
# Max Clear: Page 20
# Min Rain: Page 30
# Max Rain: Page 40

data remove storage weather:values temp
data merge storage weather:values {temp:{}}

scoreboard players enable @s WeatherCycleSP

dialog show @s {\
    type:"minecraft:multi_action",\
    title:"Setting Weather Control",\
    body:[\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Change timings"\
            }\
        }\
    ],\
    can_close_with_escape:true,\
    pause:false,\
    actions:[\
        {\
            label:"Minimum Weather is \"CLEAR\"",\
            action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 10"}\
        },\
        {\
            label:"Maximum Weather is \"CLEAR\"",\
            action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 20"}\
        },\
        {\
            label:"Minimum Weather is \"RAIN\"",\
            action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 30"}\
        },\
        {\
            label:"Maximum Weather is \"RAIN\"",\
            action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 40"}\
        },\
    ],\
    exit_action: {label:"Close",action:{type:"minecraft:run_command",command:"trigger WeatherCycleSP set 1"}}\
}