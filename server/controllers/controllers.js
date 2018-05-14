const fc=require('../../server/function')
const fs = require('fs');

exports.login = async (ctx, next) => {
    code=ctx.request.body.code
    function c(option){
      ctx.response.body = { all: JSON.parse(option)}
    }
    var res = await fc.xcxlogin(code,c);
}

exports.selectparking = async (ctx, next) => {
  function c(option){
    ctx.body ={all:option}
  }
  var a=await fc.selectparking("id",1,c)
}