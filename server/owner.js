const a = require('../server/models/owner');
const b = require('../server/models/parking');
const c = require('../server/models/parkingtime');
let mysql = require('mysql');
var async = require('async');

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

function selectowner(idORnameORidcard, content, callback) {
  var sql = 'select * from owner where ' + String(idORnameORidcard) + '=' + String(content)
  var option = new Array();
  var dataStr = "";
  conn.query(sql, function (err, results) {
    if (results) {
      for (var i = 0; i < results.length; i++) {
        // option[i] = {'label':results[i].id,'value':results[i].name};
        // console.log(results[i].name);
        option.push({ 'id': results[i].id, 'name': results[i].name, 'idcard': results[i].idcard });
      }
    }
    callback(err, option);
  });
}

function selectparking(idORownerIdORnameORlocationORnumberORlease, content, callback) {
  var sql = 'select * from parking where ' + String(idORownerIdORnameORlocationORnumberORlease) + '=' + String(content);
  var option = new Array();
  var dataStr = "";
  conn.query(sql, function (err, results) {
    if (results) {
      for (var i = 0; i < results.length; i++) {
        option.push({ 'id': results[i].id, 'ownerId': results[i].ownerId, 'name': results[i].name, 'location': results[i].location, 'number': results[i].number, 'lease': results[i].lease });
      }
    }
    callback(err, option);
  });
}

function selectparkingtime(idORparkingORtimeORprice, content, callback) {
  console.log(1)
  //var sql = 'select * from parkingtime where ' + String(idORparkingORtimeORprice) + '=' + String(content)
  var sql = 'select * from parkingtime'
  console.log(sql)
  var option = new Array();
  var dataStr = "";
  conn.query(sql, function (err, results) {
    console.log(1.5)
    console.log(results)
    if (results) {
      console.log(2)
      for (var i = 0; i < results.length; i++) {
        console.log(3)
        option.push({ 'id': results[i].id, 'parking': results[i].parking, 'time': results[i].time, 'price': results[i].price});
      }
    }
    console.log(4)
    callback(err, option,callbackk)
    
  });
}
 callbacktest = function (err, option,callback) {
   console.log(option)
   callback()
 };
 callbackk = function(){
   console.log("over")
 }
 console.log("owner")
var resf = selectparkingtime("id", 2, callbacktest)
conn.end();