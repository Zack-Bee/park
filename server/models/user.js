let mysql = require('mysql');
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'ma592624',
  database: 'xcx'
});
connection.connect(function(err) {
    if (err) {
      return console.error('error: ' + err.message);
    }
    let createtables = `create table if not exists user(
        openid varchar(50)not null primary key,
        carnumber varchar(50)
    )`;
    connection.query(createtables, function(err, results, fields) {
        if (err) {
          console.log(err.message);
        }
      });
      connection.end(function(err) {
        if (err) {
          return console.log(err.message);
        }
      });
    });