// //测试全部函数
// const fc=require('./function')
// const ofc=require('./otherfunction')
// function del(){
// fc.deletehistory(100)
// fc.deleteowner(100)
// fc.deleteparking(100)
// fc.deleteparkingtime(100)
// fc.deleteparkingtime(101)
// fc.deleteuser(100)
// }

// function add(){
// fc.addhistory(1,"2018.1.1.0.00-2019.1.1.0.00","12","辽b12345","不知道哪个停车场","1")
// fc.adduser("100","辽bdbdbd")
// fc.addowner("100")
// fc.addparking("100",3,"某停车场1","某地方","12,12",50,"wcarshg4we5rg")
// fc.addparkingtime(1,"2018.1.1.0.00-2019.1.1.0.00","12",15,1)
// fc.addparkingtime(100,"1.0.00-4.12.00","12",15,0)}

// function change(){
//   fc.changehistory(1,1,"2018.1.1.0.00-2019.1.1.0.00","12","辽b12345","123","100")
//   fc.changeuser(1,"100","辽bdbdbd")
//   fc.changeowner(2,"100")
//   fc.changeparking(1,"100",3,"某停车场1","某地方","12,12",50,"wcarshg4we5rg","40")
//   fc.changeparkingtime(1,1,"2018.1.1.0.00-2019.1.1.0.00","12",15,1)
// // ofc.changeone("owner",100,"name","cindy")
// // ofc.changeone("user",100,"carnumber","京123456")
// // ofc.changeone("history",100,"price","10")
// // ofc.changeone("parking",100,"number",49)
// // ofc.changeone("parkingtime",100,"price",10)
// }

// function select(){
// function c(a){
//     console.log(a)
//   }
// fc.selecthistory("id",1,c)
// fc.selectuser("openid",1,c)
// fc.selectparking("id",1,c)
// fc.selectowner("id",1,c)
// fc.selectparkingtime("id",1,c)
// }
// function c(a){
//   console.log(a)
// }
// fc.selectuser("id",1,c)
// //select()
// //del()

const request = require('request');
function c() {
    request('http://apis.map.qq.com/ws/geocoder/v1/?location=41,123&key=H4CBZ-CPYWK-2ZOJO-ACLVD-POMLE-FBBDZ&get_poi=1', function (error, response, body) {
      if (error) {
        console.log(error)
      }
      else if (response.statusCode == 200) {
        if(JSON.parse(body).result.pois!=""){
        console.log(JSON.parse(body).result.formatted_addresses.recommend)
      }
        
      }
      else {
        console.log("response.statusCode != 200");
      }
    })
}
c()