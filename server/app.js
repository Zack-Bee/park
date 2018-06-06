let mysql = require('mysql');
const fc=require('./function')
const ofc=require('./otherfunction')
const Koa = require('koa');
const fs = require('fs');
const bodyParser = require('koa-bodyparser')
const koaBody = require('koa-body');
var parse = require('co-body');
const app = new Koa();
app.use(async (ctx,next)=>{
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
a = async (a,b,c,d,e,max) => {
for(let i=0;i<max;i++){
await ofc.addtest(a,b,c,d,e)
sleep(300)
}
}
b = async () => {
await a(41.682577,42.183758,123.184917,123.680410,"沈阳",1700)
await a(39.527257,40.161256,116.043341,116.730859,"北京",2000)
await a(45.6495683843,45.8450644398,126.4952087402,126.7973327637,"哈尔滨",700)
await a(43.7948890723,43.9809575261,125.1480102539,125.4501342773,"长春",700)
await a(22.4821062361,23.3271242546,112.8955078125,114.1534423828,"广州深圳",2000)
await a(38.8546812947,38.9636801020,121.5417480469,121.6845703125,"大连",800)
await a(30.9422800642,31.3653637325,121.1572265625,121.7697143555,"上海",1500)
}
//b()
app.use(router.routes());
app.use(main);
