let mysql = require('mysql');
const fc = require('./function')
const ofc = require('./otherfunction')
const Koa = require('koa');
const fs = require('fs');
const bodyParser = require('koa-bodyparser')
const koaBody = require('koa-body');
var parse = require('co-body');
const app = new Koa();
app.use(async (ctx, next) => {
  await next();
})
app.use(koaBody({
  multipart: true,
  formidable: {
    maxFileSize: 200 * 1024 * 1024 // 设置上传文件大小最大限制，默认2M
  }
}));

app.use(bodyParser());
const router = require('./routes/index');
app.listen(5757);
console.log("listening 5757");
const main = ctx => {
  ctx.response.type = 'html';
  ctx.response.body = fs.createReadStream('./server/test.html');
};

function sleep(numberMillis) {
  var now = new Date();
  var exitTime = now.getTime() + numberMillis;
  while (true) {
    now = new Date();
    if (now.getTime() > exitTime)
      return;
  }
}
var num = 0
a = async (a, b, c, d, e, max) => {
  for (let i = 0; i < max; i++) {
    await ofc.addtest(a, b, c, d, e, num)
    sleep(300)
  }
}
b = async () => {
  for(let z=0;z<70000;z=z+84){
  while (num <= 10) {
    await a(22.5, 23.4, 112.6, 114.4, "广州深圳", 36)
    await a(30.8, 31.4, 121.0, 121.9, "上海", 12)
    await a(38.8, 39, 121.5, 121.7, "大连", 5)
    await a(39.4, 40.3, 115.9, 116.8, "北京", 5)
    await a(45.6, 45.9, 126.5, 126.8, "哈尔滨", 2)
    await a(43.7, 44, 125.15, 125.45, "长春", 2)
    await a(41.5, 42.4, 123.1, 123.7, "沈阳", 5)
    num++
    if(num=10){num=0}
  }
  }
}
//b()
//ofc.addpt()

app.use(router.routes());
app.use(main);
