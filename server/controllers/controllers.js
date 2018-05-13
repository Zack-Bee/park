const fc=require('../../server/function')
const fs = require('fs');
var zhi
var zhizhi
exports.login = async (ctx, next) => {
    code=ctx.request.body.code
    function cc(option){
      zhizhi=option
      ctx.body ={all:option}
    }
    var a=await fc.selectparking("id",1,cc)
    console.log(zhizhi)
    function c(option){
      zhi=JSON.parse(option)
      console.log(zhi)
      ctx.response.body = { all: 'Hello World' }
    }
    var res = await fc.xcxlogin(code,c);
    
    console.log(res)
}

exports.test = async (ctx, next) => {
  console.log(123)
  ctx.body = { msg: 'Hello World' }
}