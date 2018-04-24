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
    let createtables = `create table if not exists parking(
        id int primary key auto_increment,
        ownerId int,
        name varchar(100)not null,
        location varchar(255)not null,
        number int,
        lease varchar(255)not null
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