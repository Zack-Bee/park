const fc=require('../../server/function')
const fs = require('fs');

exports.login = async (ctx, next) => {
    code=ctx.request.body.code
    function c(option){
      ctx.response.body = { openid: JSON.parse(option).openid,err: JSON.parse(option)}
    }
    var res = await fc.xcxlogin(code,c);
}


exports.userparks = async (ctx, next) => {
  var parking
  var parkingtime=[]
  function cc(option){
    parkingtime=parkingtime.concat(option)
  }
  function c(option){
    parking =option
    console.log(option)
  }
  var a=await fc.selectparking("ownerId",ctx.request.body.openid,c)
  for(i=0;i<parking.length;i++){
  await fc.selectparkingtime("parking",parking[i].id,cc)
  }
  ctx.body={parking:parking,parkingtime:parkingtime}
}
