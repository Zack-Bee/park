// const a = require('../server/models/owner');
// const b = require('../server/models/parking');
// const c = require('../server/models/parkingtime');
// const d = require('../server/models/history');
// const e = require('../server/models/user');
let mysql = require('mysql');
var async = require('async');
var request = require('request');

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




exports.addowner = function (id, name, idcard) {
  var aa = id
  var bb = "'" + name + "'"
  var cc = "'" + idcard + "'"
  sql = 'insert into owner (id,name,idcard) values(' + aa + ',' + bb + ',' + cc + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}
exports.addparking = function (id, ownerId, kind, name, location, lola, number, lease) {
  var aa = id
  var bb = ownerId
  var cc = kind
  var dd = "'" + name + "'"
  var ee = "'" + location + "'"
  var ff = "'" + lola + "'"
  var gg = number
  var ii = "'" + lease + "'"
  sql = 'insert into parking (id,ownerId,kind,name,location,lola,number,lease) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + ff + ',' + gg + ',' + ii + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

exports.addparkingtime = function (id, parking, time, price, rentnumber, isuse, kind) {
  var aa = id
  var bb = parking
  var cc = "'" + time + "'"
  var dd = "'" + price + "'"
  var ee = rentnumber
  var ff = isuse
  var gg = kind
  sql = 'insert into parkingtime (id,parking,time,price,rentnumber,isuse,kind) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + ff + ',' + gg + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}
exports.addhistory = function (id, parkingid, time, price, carnumber) {
  var aa = id
  var bb = parkingid
  var cc = "'" + time + "'"
  var dd = "'" + price + "'"
  var ee = "'" + carnumber + "'"
  sql = 'insert into history (id, parkingid, time, price,carnumber) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ',' + ee + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}
exports.adduser = function (openid, carnumber) {
  var aa = openid
  var bb = "'" + carnumber + "'"
  sql = 'insert into user (openid,carnumber) values(' + aa + ',' + bb + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}
exports.changeowner = function (id, name, idcard) {
  var modSql = 'UPDATE owner SET name = ?,idcard = ? WHERE Id = ?';
  var modSqlParams = [name, idcard, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}

exports.changeparking = function (id, ownerId, kind, name, location, lola, number, lease) {
  var modSql = 'UPDATE parking SET ownerId = ?,kind=?,name = ?, location=?,lola=?, number=?,lease=? WHERE Id = ?';
  var modSqlParams = [ownerId, kind, name, location, lola, number, lease, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}

exports.changeparkingtime = function (id, parking, time, price, rentnumber, isuse, kind) {
  var modSql = 'UPDATE parkingtime SET parking = ?,time = ?,price =?,rentnumber=?,isuse=?,kind=? WHERE Id = ?';
  var modSqlParams = [parking, time, price, rentnumber, isuse, kind, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}

exports.changehistory = function (id, parkingid, time, price, carnumber) {
  var modSql = 'UPDATE history SET parkingid = ?,time = ?,price =?,carnumber=? WHERE Id = ?';
  var modSqlParams = [parkingid, time, price, carnumber, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}

exports.changeuser = function (openid, carnumber) {
  var modSql = 'UPDATE user SET carnumber=? WHERE openid = ?';
  var modSqlParams = [carnumber, openid];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}
exports.deleteowner = function (id) {
  var delSql = 'DELETE FROM owner where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}

exports.deleteparking = function deleteparking(id) {
  var delSql = 'DELETE FROM parking where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}

exports.deleteparkingtime = function (id) {
  var delSql = 'DELETE FROM parkingtime where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}

exports.deletehistory = function (id) {
  var delSql = 'DELETE FROM history where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}
exports.deleteuser = function (id) {
  var delSql = 'DELETE FROM user where openid=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}

var query=function(sql,options,callback){  
  pool.getConnection(function(err,conn){  
      if(err){  
          callback(err,null,null);  
      }else{  
          conn.query(sql,options,function(err,results,fields){  
              conn.release();  
              callback(err,results,fields);  
          });  
      }  
  });  
};  


exports.selectowner = function (idORnameORidcard, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from owner where ' + String(idORnameORidcard) + '=' + String(content)
    query(sql, [1], function(err,rows,fields){  
      if (err) {
            reject(err);
          } else {
            resolve(rows);
            for (var i = 0; i < rows.length; i++) {
              option.push({ 'id': rows[i].id, 'name': rows[i].name, 'idcard': rows[i].idcard });
            }
            callback(option)
          }
  });
  })
}

exports.selectparking = function (idORownerIdORkindORnameORlocationORlolaORnumberORlease, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from parking where ' + String(idORownerIdORkindORnameORlocationORlolaORnumberORlease) + '=' + String(content)
    query(sql, [1], function(err,rows,fields){  
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'ownerId': rows[i].ownerId, 'kind': rows[i].kind, 'name': rows[i].name, 'location': rows[i].location, "lola": rows[i].lola, 'number': rows[i].number, 'lease': rows[i].lease });
        }
        callback(option)
      }
    })
    
  })
}

exports.selectparkingtime = function (idORparkingORtimeORpriceORrentnumberORisuseORkind, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from parkingtime where ' + String(idORparkingORtimeORpriceORrentnumberORisuseORkind) + '=' + String(content)
    query(sql, [1], function(err,rows,fields){  
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'parking': rows[i].parking, 'time': rows[i].time, 'price': rows[i].price, 'rentnumber': rows[i].rentnumber, 'isuse': rows[i].isuse, 'kind': rows[i].kind });
        }
        callback(option)
      }
    })
  })
}

exports.selecthistory = function (idORparkingidORtimeORpriceORcarnumber, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from history where ' + String(idORparkingidORtimeORpriceORcarnumber) + '=' + String(content)
    query(sql, [1], function(err,rows,fields){  
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'parkingid': rows[i].parkingid, 'time': rows[i].time, 'price': rows[i].price, 'carnumber': rows[i].carnumber });
        }
        callback(option)
      }
    })
  })
}

exports.selectuser = function (openidORcarnumber, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from user where ' + String(openidORcarnumber) + '=' + String(content)
    query(sql, [1], function(err,rows,fields){  
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'openid': rows[i].openid, 'carnumber': rows[i].carnumber });
        }
        callback(option)
      }
    })
  })
}



