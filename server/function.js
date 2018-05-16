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

exports.xcxlogin = function (code, callback) {
  return new Promise(function (resolve, reject) {
    request('https://api.weixin.qq.com/sns/jscode2session?appid=wx5fbbb4d25168eb48&secret=106619eb311c77a93dbfd697ff06f709&js_code=' + code + '&grant_type=authorization_code', function (error, response, body) {
      if (error) {
        reject(error);
      }
      else if (response.statusCode == 200) {
        resolve(body);
        callback(body);
      }
      else {
        reject("response.statusCode != 200");
      }
    })
  });
}
exports.using = function (option) {
  var isuse = []
  var real = []
  var every = []

  function realisin(time) {
    var now = new Date();
    var year = now.getFullYear()
    var month = now.getMonth() + 1
    var day = now.getDate()
    var hour = now.getHours()
    var minute = now.getMinutes()
    var t = time.split("-")
    start = t[0]
    start = start.split(".")
    end = t[1]
    end = end.split(".")
    for (m = 0; m < start.length; m++) {
      start[m] = parseInt(start[m])
      end[m] = parseInt(end[m])
    }
    if ((start[0] <= year && start[1] <= month && start[2] <= day && start[3] <= hour && start[4] <= minute) || (start[0] <= year && start[1] <= month && start[2] <= day && start[3] < hour) || (start[0] <= year && start[1] <= month && start[2] < day) || (start[0] <= year && start[1] < month) || start[0] < year) {
      if ((year <= end[0] && month <= end[1] && day <= end[2] && hour <= end[3] && minute <= end[4]) || (year <= end[0] && month <= end[1] && day <= end[2] && hour < end[3]) || (year <= end[0] && month <= end[1] && day < end[2]) || (year <= end[0] && month < end[1]) || year < end[0]) {
        return true
      }
      return false
    }
    return false
  }

  function everyisin(time) {
    var now = new Date()
    var hour = now.getHours()
    var minute = now.getMinutes()
    t = time.split("-")
    start = t[0]
    start = start.split(".")
    end = t[1]
    end = end.split(".")
    for (m = 0; m < start.length; m++) {
      start[m] = parseInt(start[m])
      end[m] = parseInt(end[m])
    }
    if (start[0] <= hour && start[1] <= minute) {
      if (hour <= end[0] && minute < end[1]) {
        return true
      }
      return false
    }
    return false
  }

  for (i = 0; i < option.length; i++) {
    if (option[i].isuse == 1) {
      isuse.push(option[i])
    }
  }
  for (i = 0; i < isuse.length; i++) {
    if (isuse[i].kind == 1) {
      real.push(isuse[i])
    }
    else {
      every.push(isuse[i])
    }
  }
  for (i = 0; i < real.length; i++) {
    if (realisin(real[i].time)) {
      return real[i]
    }
  }
  for (i = 0; i < every.length; i++) {
    if (everyisin(every[i].time)) {
      return every[i]
    }
  }
  return 0
}

exports.unique = function (array) {
  var n = []; 
  for(var i = 0; i < array.length; i++){
    if (n.indexOf(array[i]) == -1) n.push(array[i]);
  }
  return n;
}