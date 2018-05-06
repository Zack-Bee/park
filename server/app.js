const owner=require('../server/models/owner');
const parking=require('../server/models/parking');
const parkingtime=require('../server/models/parkingtime');
let mysql = require('mysql');
const fc=require('./owner.js')
const xcxlogin=require('./login')
function c(option) {
  rows = option
  i=0
  //fc.changeparking(1, 2,rows[i].kind,rows[i].name, rows[i].location,rows[i].lola, rows[i].number, rows[i].kind3_number, rows[i].lease)
  console.log(rows)
}
fc.selectparking("id",1,c)
xcxlogin.xcxlogin("003BOwXN0ZOh2b2UE20O0BHtXN0BOwXX",c)
