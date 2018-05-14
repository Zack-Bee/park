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
  function c(option){
    ctx.body ={all:option}
  }
  var a=await fc.selectparking("id",ctx.request.body.openid,c)
  var b=await fc.selectparkingtime("id",ctx.request.body.openid,c)
}