1. 短视频分帧

第一步安装mplayer
```
brew install mplayer
```

第二步使用mplayer分帧
```
#!/bin/bash
# 参数解释：-ss 指定开始时间 
# -noframedrop 不跳过帧（即使解码速度跟不上）
# -nosound  没有声音输出（不对声音进行解码）  
# -nolirc  禁用红外控制 
# -nojoystick  禁用控制棒 
# -vo  视频输出格式为jpeg 
# -frames 从ss指定的时间开始截取多少帧 

mplayer -ss 0 -noframedrop -nosound  -nolirc -nojoystick  -vo jpeg -frames 150 /Users/Downloads/011.mp4
```




2. 将分帧后的jpg图片合成一张图片
![](out.png)

```
const {joinImages} = require('join-images')

// 修改合成图片的开始和结束位置
const start = 1
const end = 80

const arr = []
for (let i = start; i <= end;i++) {
  const prefix = '0'.repeat(8 - `${i}`.length)
  arr.push(prefix + i + '.jpg')
}

console.log(arr)

joinImages(arr, {direction: 'horizontal'}).then((img) => {
  // Save image as file
  img.toFile('out.png')
}).catch(console.error)

```