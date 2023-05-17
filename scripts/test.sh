#!/bin/bash

# mplayer -xy 720 -zoom -zoom -vo png:z=9 filename


#   参数解释：-ss 指定开始时间 
    # -noframedrop 不跳过帧（即使解码速度跟不上）
    # -nosound  没有声音输出（不对声音进行解码）  
    # -nolirc  禁用红外控制 
    # -nojoystick  禁用控制棒 
    # -vo  视频输出格式为jpeg 
    # -frames 从ss指定的时间开始截取多少帧 

mplayer -ss 0 -noframedrop -nosound  -nolirc -nojoystick  -vo jpeg -frames 150 /Users/lishichao/Downloads/011.mp4