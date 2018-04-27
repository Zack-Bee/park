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
function addowner(id,name,idcard){
var aa=id
var bb="'"+name+"'"
var cc="'"+idcard+"'"
sql='insert into owner (id,name,idcard) values('+aa+','+bb+','+cc+')'
conn.query(sql, function(err, result) {
  if (err) throw err;
  console.log(result);
})
}
function addparking(id,ownerId,name,location,number,lease){
  var aa=id
  var bb=ownerId
  var cc="'"+name+"'"
  var dd="'"+location+"'"
  var ee=number
  var ff="'"+lease+"'"
  
  sql='insert into parking (id,ownerId,name,location,number,lease) values('+aa+','+bb+','+cc+','+dd+','+ee+','+ff+')'
  console.log(sql)
  conn.query(sql, function(err, result) {
    if (err) throw err;
    console.log(result);
  })
  }
  addparking(1,1,"wqxasv","XS","100","agecbhjwaehcyuwhjvxs")
  