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
