let mysql = require('mysql');
const fc=require('./function')
const ofc=require('./otherfunction')
const Koa = require('koa');
const fs = require('fs');
const bodyParser = require('koa-bodyparser')
var parse = require('co-body');
const app = new Koa();
app.use(async (ctx,next)=>{
  await next();
})
app.use(bodyParser());
const router = require('./routes/index')
app.listen(5757)
console.log("listening 5757")
const main = ctx => {
  ctx.response.type = 'html';
  ctx.response.body = fs.createReadStream('./server/test.html');
};
ofc.changeone("parking",1,"name","出去")
ofc.changeone("user",1,"carnumber","甲A-13456")
ofc.changeone("history",1,"parkingid","1")
ofc.changeone("owner",1,"idcard","zzzzzzzzz")
app.use(router.routes())
app.use(main)
