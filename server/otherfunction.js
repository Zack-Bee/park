const fc=require('./function')
exports.changeone= async(oppuh,id,what,value) =>{
    var a
    function c(option){
      a=option[0]
    }
    if(oppuh=="owner")
    {
      await fc.selectowner("id",id,c)
      if(what=="name"){fc.changeowner(id,value,a.idcard)}
      else if(what=="idcard"){fc.changeowner(id,a.name,value)}
    }
    else if(oppuh=="parking")
    {
      await fc.selectparking("id",id,c)
      if(what=="ownerId"){fc.changeparking(id,value,a.kind,a.name,a.location,a.lola,a.number,a.lease)}
      else if(what=="kind"){fc.changeparking(id,a.ownerId,value,a.name,a.location,a.lola,a.number,a.lease)}
      else if(what=="name"){fc.changeparking(id,a.ownerId,a.kind,value,a.location,a.lola,a.number,a.lease)}
      else if(what=="location"){fc.changeparking(id,a.ownerId,a.kind,a.name,value,a.lola,a.number,a.lease)}
      else if(what=="lola"){fc.changeparking(id,a.ownerId,a.kind,a.name,a.location,value,a.number,a.lease)}
      else if(what=="number"){fc.changeparking(id,a.ownerId,a.kind,a.name,a.location,a.lola,value,a.lease)}
      else if(what=="lease"){fc.changeparking(id,a.ownerId,a.kind,a.name,a.location,a.lola,a.number,value)}
    }
    else if(oppuh=="parkingtime")
    {
      await fc.selectparkingtime("id",id,c)
      if(what=="parking"){fc.changeparkingtime(id,value,a.time,a.price,a.rentnumber,a.isuse,a.kind)}
      else if(what=="time"){fc.changeparkingtime(id,a.parking,value,a.price,a.rentnumber,a.isuse,a.kind)}
      else if(what=="price"){fc.changeparkingtime(id,a.parking,a.time,value,a.rentnumber,a.isuse,a.kind)}
      else if(what=="rentnumber"){fc.changeparkingtime(id,a.parking,a.time,a.price,value,a.isuse,a.kind)}
      else if(what=="isuse"){fc.changeparkingtime(id,a.parking,a.time,a.price,a.rentnumber,value,a.kind)}
      else if(what=="kind"){fc.changeparkingtime(id,a.parking,a.time,a.price,a.rentnumber,a.isuse,value)}
    }
    else if(oppuh=="user")
    {
      await fc.selectuser("openid",id,c)
      if(what=="carnumber"){fc.changeuser(id,value)}
    }
    else if(oppuh=="history")
    {
      await fc.selecthistory("id",id,c)
      if(what=="parkingid"){fc.changehistory(id,value,a.time,a.price,a.carnumber)}
      else if(what=="time"){fc.changehistory(id,a.parkingid,value,a.price,a.carnumber)}
      else if(what=="price"){fc.changehistory(id,a.parkingid,a.time,value,a.carnumber)}
      else if(what=="carnumber"){fc.changehistory(id,a.parkingid,a.time,a.price,value)}
    }
  }


  exports.xcxlogin = function (code, callback) {
    return new Promise(function (resolve, reject) {
      request('https://api.weixin.qq.com/sns/jscode2session?appid=wx5fbbb4d25168eb48&secret=106619eb311c77a93dbfd697ff06f709&js_code=' + code + '&grant_type=authorization_code', function (error, response, body) {
        if (error) {
          reject(error);
        }
        else if (response.statusCode == 200) {
          resolve(body);
          callback(body);
        }
        else {
          reject("response.statusCode != 200");
        }
      })
    });
  }


  exports.using = function (option) {
    var isuse = []
    var real = []
    var every = []
    function realisin(time) {
      var now = new Date();
      var year = now.getFullYear()
      var month = now.getMonth() + 1
      var day = now.getDate()
      var hour = now.getHours()
      var minute = now.getMinutes()
      var t = time.split("-")
      start = t[0]
      start = start.split(".")
      end = t[1]
      end = end.split(".")
      for (m = 0; m < start.length; m++) {
        start[m] = parseInt(start[m])
        end[m] = parseInt(end[m])
      }
      if ((start[0] <= year && start[1] <= month && start[2] <= day && start[3] <= hour && start[4] <= minute) || (start[0] <= year && start[1] <= month && start[2] <= day && start[3] < hour) || (start[0] <= year && start[1] <= month && start[2] < day) || (start[0] <= year && start[1] < month) || start[0] < year) {
        if ((year <= end[0] && month <= end[1] && day <= end[2] && hour <= end[3] && minute <= end[4]) || (year <= end[0] && month <= end[1] && day <= end[2] && hour < end[3]) || (year <= end[0] && month <= end[1] && day < end[2]) || (year <= end[0] && month < end[1]) || year < end[0]) {
          return true
        }
        return false
      }
      return false
    }
    function everyisin(time) {
      var now = new Date()
      var hour = now.getHours()
      var minute = now.getMinutes()
      t = time.split("-")
      start = t[0]
      start = start.split(".")
      end = t[1]
      end = end.split(".")
      for (m = 0; m < start.length; m++) {
        start[m] = parseInt(start[m])
        end[m] = parseInt(end[m])
      }
      if (start[0] <= hour && start[1] <= minute) {
        if (hour <= end[0] && minute < end[1]) {
          return true
        }
        return false
      }
      return false
    }
    for (i = 0; i < option.length; i++) {
      if (option[i].isuse == 1) {
        isuse.push(option[i])
      }
    }
    for (i = 0; i < isuse.length; i++) {
      if (isuse[i].kind == 1) {
        real.push(isuse[i])
      }
      else {
        every.push(isuse[i])
      }
    }
    for (i = 0; i < real.length; i++) {
      if (realisin(real[i].time)) {
        return real[i]
      }
    }
    for (i = 0; i < every.length; i++) {
      if (everyisin(every[i].time)) {
        return every[i]
      }
    }
    return 0
  }
  

  exports.unique = function (array) {
    var n = []; 
    for(var i = 0; i < array.length; i++){
      if (n.indexOf(array[i]) == -1) n.push(array[i]);
    }
    return n;
  }