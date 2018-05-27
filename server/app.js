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
const router = require('./routes/index')
app.listen(5757)
console.log("listening 5757")
const main = ctx => {
  ctx.response.type = 'html';
  ctx.response.body = fs.createReadStream('./server/test.html');
};
fc.addhistory(1,"2018.5.19.13.45-2018.5.20.15.30",12,"1","1","1")
fc.addhistory(2,"2018.5.19.13.45-2018.5.20.15.30",12,"1","1","1")
fc.addhistory(3,"2018.5.19.13.45-2018.5.20.15.30",12,"1","1","1")
fc.addhistory(4,"2018.5.19.13.45-2018.5.20.15.30",12,"1","1","1")
app.use(router.routes())
app.use(main)
