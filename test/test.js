const a = require('../server/models/owner');
const b = require('../server/models/parking');
const c = require('../server/models/parkingtime');
let mysql = require('mysql');

var conn = mysql.createConnection({
  host: 'localhost',    //服务器端口
  user: 'root',           //数据库用户名
  password: 'ma592624',         //密码
  database: 'xcx',   //指定连接的数据库
  port: 3306            //服务器的端口号
});
function addowner(id, name, idcard) {
  var aa = id
  var bb = "'" + name + "'"
  var cc = "'" + idcard + "'"
  sql = 'insert into owner (id,name,idcard) values(' + aa + ',' + bb + ',' + cc + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}
function addparking(id, ownerId, name, location, number, lease) {
  var aa = id
  var bb = ownerId
  var cc = "'" + name + "'"
  var dd = "'" + location + "'"
  var ee = number
  var ff = "'" + lease + "'"
  sql = 'insert into parking (id,ownerId,name,location,number,lease) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + ff + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

function addparkingtime(id, parking, time, price) {
  var aa = id
  var bb = parking
  var cc = "'" + time + "'"
  var dd = "'" + price + "'"
  sql = 'insert into parkingtime (id,parking,time,price) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

function changeowner(id, name, idcard) {
  var modSql = 'UPDATE owner SET name = ?,idcard = ? WHERE Id = ?';
  var modSqlParams = [name, idcard, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
      return;
    }
  })
}

function changeparking(id, ownerId, name, location, number, lease) {
  var modSql = 'UPDATE parking SET ownerId = ?,name = ?, location=?, number=?, lease=? WHERE Id = ?';
  var modSqlParams = [ownerId, name, location, number, lease, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
      return;
    }
  })
}

function changeparkingtime(id, parking, time, price) {
  var modSql = 'UPDATE parkingtime SET parking = ?,time = ?,price =? WHERE Id = ?';
  var modSqlParams = [parking, time, price, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
      return;
    }
  })
}

// changeowner(3, "萌哒哒", "1132rdewqrd221123")
// changeparking(2,100,"东北大学停车场","东北大学南门","100","agecbhjwaehcyuwhjvxs")
// changeparkingtime(1, 2, "24:00-12:00", "3")
function deleteowner(id) {
  var delSql = 'DELETE FROM owner where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
      return;
    }
  })
}

function deleteparking(id) {
  var delSql = 'DELETE FROM parking where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
      return;
    }
  })
}

function deleteparkingtime(id) {
  var delSql = 'DELETE FROM parkingtime where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
      return;
    }
  })
}

function selectowner(idORnameORidcard,content) {
  sql = 'select * from owner where '+String(idORnameORidcard)+'='+String(content)
  var a,b,c;
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result[0]['id']);
    console.log(result);
    a=result[0]['id']
    b=result[0]['name']
    c=result[0]['idcard']
    console.log(result[0]['id'],b,c)
  })
  console.log(a,b,c)
  return [a,b,c]
}

function selectparking(idORownerIdORnameORlocationORnumberORlease,content) {
  sql = 'select * from owner where '+String(idORownerIdORnameORlocationORnumberORlease)+'='+String(content)
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

function selectparkingtime(idORparkingORtimeORprice,content) {
  sql = 'select * from owner where '+String(idORparkingORtimeORprice)+'='+String(content)
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

var resf=selectowner("id",1)
console.log(resf)
conn.end();
