var request = require('request');
exports.xcxlogin=function(code,callback){
request('https://api.weixin.qq.com/sns/jscode2session?appid=wx5fbbb4d25168eb48&secret=106619eb311c77a93dbfd697ff06f709&js_code='+code+'&grant_type=authorization_code', function (error, response, body) {
    if (!error && response.statusCode == 200) {
        callback(body)
    }
});
}
/*在别的js文件中
const xcxlogin=require('./login')
xcxlogin.xcxlogin(code,callback)
code是临时登陆凭证，callback是回调函数，比如
function c(option) {
  var xxx = JSON.parse(option)
}
xxx.openid即为openid
*/