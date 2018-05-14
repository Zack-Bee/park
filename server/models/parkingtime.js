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
    let createtables = `create table if not exists parkingtime(
        id int primary key auto_increment,
        parking int,
        time varchar(100),
        price varchar(255),
        rentnumber int,
        isuse bool,
        kind int
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