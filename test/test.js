const a=require('../server/models/owner');
const b=require('../server/models/parking');
const c=require('../server/models/parkingtime');
let mysql = require('mysql');

var conn = mysql.createConnection({
  host: 'localhost',    //服务器端口
  user: 'root',           //数据库用户名
  password: 'ma592624',         //密码
  database:'xcx',   //指定连接的数据库
  port: 3306            //服务器的端口号
});
var aa=2
var bb="daming"
var cc="23456"
conn.query('insert into owner (id,name,idcard) values(2,bb,cc)', function(err, result) {
  if (err) throw err;
  console.log(result);
})