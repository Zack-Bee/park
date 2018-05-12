let mysql = require('mysql');
const fc=require('./function')
const xcxlogin=require('./login')
const Koa = require('koa');
const fs = require('fs');
const bodyParser = require('koa-bodyparser')
const router = require('koa-router')();
const app = new Koa();
app.use(async (ctx,next)=>{
  await next();
})

//const router = require('./routes')
router.post('/getname', async (ctx,next)=>{
  console.log(111)
})

app.listen(3000)
console.log("ok")
const main = ctx => {
  ctx.response.type = 'html';
  ctx.response.body = fs.createReadStream('./server/test.html');
};
app.use(router.routes())
app.use(main)
