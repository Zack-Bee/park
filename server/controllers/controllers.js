const fc=require('../../server/function')
const fs = require('fs');
var zhi
function c(a){
    zhi=a
    console.log(zhi)
  }
exports.login = async (ctx, next) => {
    code=ctx.request.body//具体再改
    console.log(code)
    var res = await fc.selectowner("id",1,c);
		if(res){
            ctx.response.type = 'html';
  ctx.response.body = "<h1>"+zhi[0].id+zhi[0].name+zhi[0].idcard+"<h1>";
		}
}
