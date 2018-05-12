let mysql = require('mysql');
const fc=require('./function')
const xcxlogin=require('./login')
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
app.listen(3000)
console.log("listening 3000")
const main = ctx => {
  ctx.response.type = 'html';
  ctx.response.body = fs.createReadStream('./server/test.html');
};
app.use(router.routes())
app.use(main)
