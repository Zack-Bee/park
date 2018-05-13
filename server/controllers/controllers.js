const fc=require('../../server/function')
const fs = require('fs');
var zhi
function c(option){
    zhi=JSON.parse(option)
    console.log(zhi)
  }
exports.login = async (ctx, next) => {
    code=ctx.request.body.code
    var res = await fc.xcxlogin(code,c);
		if(res){
  ctx.response.body = zhi.openid;
		}
}
