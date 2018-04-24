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
    let createtables = `create table if not exists owner(
        id int primary key auto_increment,
        name varchar(50)not null,
        idcard varchar(50)not null
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