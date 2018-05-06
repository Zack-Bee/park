var request = require('request');
exports.xcxlogin=function(code,callback){
request('https://api.weixin.qq.com/sns/jscode2session?appid=wx5fbbb4d25168eb48&secret=106619eb311c77a93dbfd697ff06f709&js_code='+code+'&grant_type=authorization_code', function (error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log(body);
        callback(body)
    }
});
}