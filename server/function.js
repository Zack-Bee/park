const mysql = require('mysql');
const async = require('async');
const ofc = require('./otherfunction')
const fc = require('./function')
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




exports.addowner = function (openId) {
  sql = 'insert into owner (openId) values(' + openId + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

function getid(lola,openId,callback) {
  var aa = "'" + ofc.part(lola) + "'"
  var bb = "'" + openId + "'"
  var option = new Array();
  return new Promise(function (resolve, reject) {
    var option = new Array();
    sql1 = 'insert into allparking(tableName,openId) values(' + aa + ',' + bb + ')'
    sql2 = 'select last_insert_id()'
    conn.query(sql1, function (err, result) {
      if (err) {
        throw err;
        reject(err);
      }
      console.log(result);
      conn.query(sql2, function (err, data) {
        if (err) {
          console.log('查询数据失败');
          reject(err);
        } else {
          callback(data[0]['last_insert_id()'])
          resolve(data);
        }
      })
    })
  })
}

exports.addparking = function (openId, kind, name, location, lola, number, lease) {
  var aa
  getid(lola,openId,function (data) {
    aa = data
    var bb = "'" + openId + "'"
    var cc = kind
    var dd = "'" + name + "'"
    var ee = "'" + location + "'"
    var ff = "'" + lola + "'"
    var gg = number
    var ii = "'" + lease + "'"
    
    part = ofc.part(lola)
    sql = 'insert into ' + part + ' (id,openId, kind, name, location, lola, number, lease) values(' + aa + ',' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + ff + ',' + gg + ',' + ii + ')'
    conn.query(sql, function (err, result) {
      if (err) throw err;
      console.log(result);
    })
  })
}

exports.addparkingtime = function (parking, time, price, rentNumber, kind,callback=function(a){console.log(a)}) {
  var bb = parking
  var cc = "'" + time + "'"
  var dd = "'" + price + "'"
  var ee = rentNumber
  var gg = kind
  sql = 'insert into parkingtime (parking,time,price,rentNumber,kind) values(' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + gg + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
  callback(parking)
}
exports.addhistory = function (parking, time, pay, carNumber, parkLocation, openId, location, kind, unitPrice) {
  var bb = parking
  var cc = "'" + time + "'"
  var dd = "'" + pay + "'"
  var ee = "'" + carNumber + "'"
  var ff = "'" + parkLocation + "'"
  var gg = "'" + openId + "'"
  var hh = "'" + location + "'"
  var ii = kind
  var jj = unitPrice
  sql = 'insert into history (parking, time, pay, carNumber,lola, openId,location,kind,unitPrice) values(' + bb + ',' + cc + ',' + dd + ',' + ee + ',' + ff + ',' + gg + ',' + hh + ',' + ii + ',' + jj + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}
exports.adduser = function (openId, carNumber) {
  var aa = "'" + openId + "'"
  var bb = "'" + carNumber + "'"
  sql = 'insert into user (openId,carNumber) values(' + aa + ',' + bb + ')'
  conn.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  })
}

exports.changeone = function (pph, id, what, value) {
  var modSql = 'UPDATE ' + pph + ' SET ' + what + ' = ?' + ' WHERE id = ?';
  var modSqlParams = [value, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}
exports.idGetTableName= function (partId,callback) {
  return new Promise(function (resolve, reject) {
    var op = new Array();
    sql1='select tableName from allparking where id='+ partId
    query(sql1, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
          op.push({ 'tableName': rows[0].tableName });
        callback(op)
      }
    })
  })
}
exports.changeparking = function (pph, id, what, value) {
  fc.idGetTableName(id,function(option){
    tableName=option[0].tableName
    var modSql = 'UPDATE '+tableName+' SET ' + what + ' = ?' + ' WHERE id = ?';
  var modSqlParams = [value, id];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
  })
}

exports.changeou = function (ou, openId, what, value) {
  var modSql = 'UPDATE ' + ou + ' SET ' + what + ' = ?' + ' WHERE openId = ?';
  var modSqlParams = [value, openId];
  conn.query(modSql, modSqlParams, function (err, result) {
    if (err) {
      console.log('[UPDATE ERROR] - ', err.message);
    }
  })
}

exports.deleteowner = function (openId) {
  var delSql = 'DELETE FROM owner where openId=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}

exports.deleteparking = function deleteparking(lola,id) {
  part = ofc.part(lola)
  var delSql = 'DELETE FROM '+part+' where id=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
  var delSql2 = 'DELETE FROM allparking where id=' + String(id);
  conn.query(delSql2, function (err, result) {
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
exports.deleteuser = function (openId) {
  var delSql = 'DELETE FROM user where openId=' + String(id);
  conn.query(delSql, function (err, result) {
    if (err) {
      console.log('[DELETE ERROR] - ', err.message);
    }
  })
}

var query = function (sql, options, callback) {
  pool.getConnection(function (err, conn) {
    if (err) {
      callback(err, null, null);
    } else {
      conn.query(sql, options, function (err, results, fields) {
        conn.release();
        callback(err, results, fields);
      });
    }
  });
};


exports.selectowner = function (idORopenId, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from owner where ' + String(idORopenId) + '= ' + String(content)
    query(sql, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'openId': rows[i].openId });
        }
        callback(option)
      }
    });
  })
}
exports.selectoneparking = function (which, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from ' + which
    query(sql, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'openId': rows[i].openId, 'kind': rows[i].kind, 'name': rows[i].name, 'location': rows[i].location, "lola": rows[i].lola, 'number': rows[i].number, 'lease': rows[i].lease, 'income': rows[i].income, 'isOpen': rows[i].isOpen });
        }
        callback(option)
      }
    })
  })
}

function selectInUnit(part, openId) {
  return new Promise(function(resolve, reject) {
      var op = new Array()
      sql1 =
          'select * from ' +
          part +
          ' where openId=' +
          '"' +
          String(openId) +
          '"'
      query(sql1, [1], function(err, rows, fields) {
          if (err) {
              reject(err)
          } else {
              let parks = rows.map((park) => ({
                  id: park.id,
                  openId: park.openId,
                  kind: park.kind,
                  name: park.name,
                  location: park.location,
                  lola: park.lola,
                  number: park.number,
                  lease: park.lease,
                  income: park.income,
                  isOpen: park.isOpen
              }))
              resolve(parks)
          }
      })
  })
}

exports.selectParkingByopenId= async (openId,callback) => {
  let a=await fc.selectParkingByopenId2(openId)
  a = [].concat(...a)
  callback(a)
  }
exports.selectParkingByopenId2 = async (openId) => {
  return await fc.selectParkingByopenId1(openId)
}

exports.selectParkingByopenId1 = function(openId) {
  return new Promise(function(resolve, reject) {
      let parts = [],
          option = [],
          sql =
          'select * from allparking where openId=' +
          '"' +
          String(openId) +
          '"'
      query(sql, [1], function(err, rowss, fields) {
          if (err) {
              reject(err)
          } else {
              for (let i = 0, len = rowss.length; i < len; i++) {
                  parts.push(rowss[i].tableName)
              }
              parts = ofc.unique(parts) //对这个openid的停车场分别在哪个表里进行查重，就是得到哪几个分表里有这个openid的停车场的数组

              let partsPromise = parts.map((part) => (
                  selectInUnit(part, openId)
              ))
              Promise.all(partsPromise).then((options) => {
                  resolve(options)
              })
          }
      })
  })
}
exports.selectparking = function (lola,idORopenIdORkindORnameORlocationORlolaORnumberORleaseORincome, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    part = ofc.part(lola)
    var sql = 'select * from ' + part + ' where ' + String(idORopenIdORkindORnameORlocationORlolaORnumberORleaseORincome) + '=' + String(content)
    query(sql, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'openId': rows[i].openId, 'kind': rows[i].kind, 'name': rows[i].name, 'location': rows[i].location, "lola": rows[i].lola, 'number': rows[i].number, 'lease': rows[i].lease, 'income': rows[i].income, 'isOpen': rows[i].isOpen });
        }
        callback(option)
      }
    })
  })
}

exports.selectparkingtime = function (idORparkingORtimeORpriceORrentNumberORkind, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from parkingtime where ' + String(idORparkingORtimeORpriceORrentNumberORkind) + '=' + String(content)
    query(sql, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'parking': rows[i].parking, 'time': rows[i].time, 'price': rows[i].price, 'rentNumber': rows[i].rentNumber, 'kind': rows[i].kind });
        }
        callback(option)
      }
    })
  })
}

exports.selecthistory = function (idORparkingORtimeORpayORcarNumberORparkingLocationORopenId, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from history where ' + String(idORparkingORtimeORpayORcarNumberORparkingLocationORopenId) + '=' + String(content)
    query(sql, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'parking': rows[i].parking, 'time': rows[i].time, 'pay': rows[i].pay, 'carNumber': rows[i].carNumber, 'lola': rows[i].lola, 'openId': rows[i].openId, 'status': rows[i].status, 'location': rows[i].location, 'kind': rows[i].kind, 'unitPrice': rows[i].unitPrice });
        }
        callback(option)
      }
    })
  })
}

exports.selectuser = function (idORopenIdORcarNumber, content, callback) {
  return new Promise(function (resolve, reject) {
    var option = new Array();
    var sql = 'select * from user where ' + String(idORopenIdORcarNumber) + '=' + String(content)
    query(sql, [1], function (err, rows, fields) {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
        for (var i = 0; i < rows.length; i++) {
          option.push({ 'id': rows[i].id, 'openId': rows[i].openId, 'carNumber': rows[i].carNumber });
        }
        callback(option)
      }
    })
  })
}



