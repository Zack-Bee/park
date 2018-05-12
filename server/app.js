const owner=require('../server/models/owner');
const parking=require('../server/models/parking');
const parkingtime=require('../server/models/parkingtime');
let mysql = require('mysql');
const fc=require('./owner.js')
const xcxlogin=require('./login')
const Koa = require('koa');
const fs = require('fs');

const app = new Koa();

const main = ctx => {
  ctx.response.type = 'html';
  ctx.response.body = fs.createReadStream('./server/test.html');
};
app.use(main)
// 在端口3000监听:
app.listen(3000);
console.log('app started at port 3000...');
var rows
function c(option) {
  //i=0
  //fc.changeparking(1, 2,rows[i].kind,rows[i].name, rows[i].location,rows[i].lola, rows[i].number, rows[i].kind3_number, rows[i].lease)
  rows=option
  console.log(option)
  app.use(async (ctx, next) => {
    await next();
    ctx.response.type = 'text/html';
    ctx.response.body = '<h1>'+rows[0].id+rows[0].name+'</h1>';
  });
}
//fc.selectowner("id",1,c)


//小程序根据code换openid操作：
//xcxlogin.xcxlogin("003oxtka1QSV4R1YDgka1fCyka1oxtk6",c)
// function c(option) {
//   rows = JSON.parse(option)
//   console.log(rows,rows.openid)
// }