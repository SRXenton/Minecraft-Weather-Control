## Debug
# tellraw @a "P101"

scoreboard players enable @s WeatherCycleSP

dialog show @s {\
    type:"confirmation",\
    can_close_with_escape:true,\
    title:"Confirm toggle Gamerule",\
    "body":[\
        {\
            "type":"minecraft:plain_message",\
            contents:[\
                {text:"You will switch the Gamerule: send_command_feedback "}\
            ]\
        }\
    ],\
    yes:{\
        label:"YES",\
        "action":{\
            "type":"minecraft:run_command",\
            "command":"trigger WeatherCycleSP set 102"\
        }\
    },\
    no:{\
        label:"NO",\
        "action":{\
            "type":"minecraft:run_command",\
            "command":"trigger WeatherCycleSP set 1"\
        }\
    }\
}
