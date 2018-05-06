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

var options = {
  'host': 'localhost',
  'port': 3306,
  'database': 'xcx',
  'user': 'root',
  'password': 'ma592624'
}

var pool = mysql.createPool(options);

exports.addowner = function(id, name, idcard) {
  var aa = id
  var bb = "'" + name + "'"
  var cc = "'" + idcard + "'"
  sql = 'insert into owner (id,name,idcard) values(' + aa + ',' + bb + ',' + cc + ')'
  conn.query(sql, function(err, result) {
    if (err) throw err;
    console.log(result);
  })
}
exports.addparking = function(id, ownerId,kind, name, location,lola,number,kind3_number, lease) {
  var aa = id
  var bb = ownerId
  var cc = kind
  var dd = "'" + name + "'"
  var ee = "'" + location + "'"
  var ff = "'" + lola + "'"
  var gg = number
  var hh =kind3_number
  var ii = "'" + lease + "'"
  sql = 'insert into parking (id,ownerId,kind,name,location,lola,number,kind3_number,lease) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + ff + ',' + gg + ',' + hh + ',' + ii + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

exports.addparkingtime = function(id, parking, time, price) {
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

exports.changeowner = function(id, name, idcard) {
  var modSql = 'UPDATE owner SET name = ?,idcard = ? WHERE Id = ?';
  var modSqlParams = [name, idcard, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
      return;
    }
  })
}

exports.changeparking = function (id, ownerId, kind, name, location, lola, number, kind3_number, lease) {
  var modSql = 'UPDATE parking SET ownerId = ?,kind=?,name = ?, location=?,lola=?, number=?, kind3_number=?,lease=? WHERE Id = ?';
  var modSqlParams = [ownerId, kind, name, location, lola, number, kind3_number, lease,id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
      return;
    }
  })
}

exports.changeparkingtime = function(id, parking, time, price) {
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
exports.deleteowner = function(id) {
  var delSql = 'DELETE FROM owner where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
      return;
    }
  })
}

exports.deleteparking = function deleteparking(id) {
  var delSql = 'DELETE FROM parking where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
      return;
    }
  })
}

exports.deleteparkingtime= function(id) {
  var delSql = 'DELETE FROM parkingtime where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
      return;
    }
  })
}



function execQuery(sql, values, callback) {
  var errinfo;
  pool.getConnection(function (err, connection) {
    if (err) {
      errinfo = 'DB-获取数据库连接异常！';
      throw errinfo;
    } else {
      var querys = connection.query(sql, values, function (err, rows) {
        release(connection);
        if (err) {
          errinfo = 'DB-SQL语句执行错误:' + err;
          callback(err);
        } else {
          callback(null, rows);        //注意：第一个参数必须为null
        }
      });
    }
  });
}

function release(connection) {
  try {
    connection.release(function (error) {
      if (error) {
        console.log('DB-关闭数据库连接异常！');
      }
    });
  } catch (err) { }
}

exports.selectowner = function (idORnameORidcard, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from owner where ' + String(idORnameORidcard) + '=' + String(content)
    execQuery(sql, function (err, rows) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'name': rows[i].name, 'idcard': rows[i].idcard });
        }
        callback(option)
      }
    })
  })
}

exports.selectparking = function (idORownerIdORkindORnameORlocationORlolaORnumberORkind3_numberORlease, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from parking where ' + String(idORownerIdORkindORnameORlocationORlolaORnumberORkind3_numberORlease) + '=' + String(content)
    execQuery(sql, function (err, rows) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'ownerId': rows[i].ownerId, 'kind':rows[i].kind,'name': rows[i].name, 'location': rows[i].location,"lola":rows[i].lola, 'number': rows[i].number, 'kind3_number':rows[i].kind3_number,'lease': rows[i].lease });
        }
        callback(option)
      }
    })
  })
}

exports.selectparkingtime = function (idORparkingORtimeORprice, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from parkingtime where ' + String(idORparkingORtimeORprice) + '=' + String(content)
    execQuery(sql, function (err, rows) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'parking': rows[i].parking, 'time': rows[i].time, 'price': rows[i].price });
        }
        callback(option)
      }
    })
  })
}


