# Min Clear: Page 10
# Max Clear: Page 20
# Min Rain: Page 30
# Max Rain: Page 40



scoreboard players enable @s WeatherCycleSP

$dialog show @s {\
    type:"minecraft:multi_action",\
    title:{\
        text:"Setting Weather Control",\
        bold: true\
    },\
    body:[\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Actual Values: (Realtime minutes)",\
                "underlined": true\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Minimum Weather is Clear: $(minClear)"\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Maximum Weather is Clear: $(maxClear)"\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Minimum Weather is Rain: $(minRain)"\
            }\
        },\
        {\
            "type": "minecraft:plain_message",\
            "contents": {\
                text: "Maximum Weather is Rain: $(maxRain)"\
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
                text: "Change timings:",\
                "underlined": true\
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