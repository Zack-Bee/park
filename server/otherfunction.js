const fc = require('./function')
const mysql = require('mysql');
const async = require('async');
const request = require('request');
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
    if (start[0] < year || (start[0] == year && start[1] < month) || (start[0] == year && start[1] == month && start[2] < day) || (start[0] == year && start[1] == month && start[2] == day && start[3] < hour) || (start[0] == year && start[1] == month && start[2] == day && start[3] == hour && start[4] <= minute)) {
      if (year < end[0] || (year == end[0] && month < end[1]) || (year == end[0] && month == end[1] && day < end[2]) || (year == end[0] && month == end[1] && day == end[2] && hour < end[3]) || (year == end[0] && month == end[1] && day == end[2] && hour == end[3] && minute <= end[4])) {
        return true
      }
      return false
    }
    return false
  }

  function everyisin(time) {
    var now = new Date()
    var week = now.getDay()
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
    if (start[0] <= end[0]) {
      if ((start[0] < week) || (start[0] == week && start[1] < hour) || (start[0] == week && start[1] == hour && start[2] <= minute)) {
        if ((week < end[0]) || (week == end[0] && hour < end[1]) || (week == end[0] && hour == end[1] && minutes <= end[3])) {
          return true
        }
        return false
      }
      return false
    }
    else {
      var s1 = start
      var s2 = [1, 0, 0]
      var e1 = [7, 23, 59]
      var e2 = end
      if ((s1[0] < week) || (s1[0] == week && s1[1] < hour) || (s1[0] == week && s1[1] == hour && s1[2] <= minute)) {
        if ((week < e1[0]) || (week == e1[0] && hour < e1[1]) || (week == e1[0] && hour == e1[1] && minutes <= e1[3])) {
          return true
        }
      }
      else if ((s2[0] < week) || (s2[0] == week && s2[1] < hour) || (s2[0] == week && s2[1] == hour && s2[2] <= minute)) {
        if ((week < e2[0]) || (week == e2[0] && hour < e2[1]) || (week == e2[0] && hour == e2[1] && minutes <= e2[3])) {
          return true
        }
      }
      else
        return false
    }
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
  for (var i = 0; i < array.length; i++) {
    if (n.indexOf(array[i]) == -1) n.push(array[i]);
  }
  return n;
}

exports.cleanparkingtime = function (option) {
  function realisok(time) {
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
    if (year < end[0] || (year == end[0] && month < end[1]) || (year == end[0] && month == end[1] && day < end[2]) || (year == end[0] && month == end[1] && day == end[2] && hour < end[3]) || (year == end[0] && month == end[1] && day == end[2] && hour == end[3] && minute <= end[4])) {
      return true
    }
    return false
  }

  function everyisok(time) {
    var now = new Date()
    var week = now.getDay()
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
    if (start[0] <= end[0]) {
      if ((week < end[0]) || (week == end[0] && hour < end[1]) || (week == end[0] && hour == end[1] && minutes <= end[3])) {
        return true
      }
      return false
    }
    else {
      var s1 = start
      var s2 = [1, 0, 0]
      var e1 = [7, 23, 59]
      var e2 = end

      if ((week < e1[0]) || (week == e1[0] && hour < e1[1]) || (week == e1[0] && hour == e1[1] && minutes <= e1[3])) {
        return true
      }

      else if ((week < e2[0]) || (week == e2[0] && hour < e2[1]) || (week == e2[0] && hour == e2[1] && minutes <= e2[3])) {
        return true
      }
      else
        return false
    }
  }
  for (let i = 0; i < option.length; i++) {
    time = option[i].time
    kind = option[i].kind
    if (kind == 0) {
      if (everyisok(time)) {
        continue
      }
      else {
        fc.deleteparkingtime(option[i].id)
      }
    }
    else if (kind == 1) {
      if (realisok(time)) {
        continue
      }
      else {
        fc.deleteparkingtime(option[i].id)
      }
    }

  }
}

exports.income = async (parkingtimeId) => {
  let parkingtime
  function c(option) {
    parkingtime = option[0]
  }
  await fc.selectparkingtime("id", parkingtimeId, c)
  if(parkingtime.kind==0){
    let t=parkingtime.time.split("-")
    t=t[0].split(".").concat(t[1].split("."))
    let hour=parseInt(t[4])-parseInt(t[1])
    let minute=parseInt(t[5])-parseInt(t[2])
    let income=(hour*parkingtime.price+minute/60*parkingtime.price)*7
    income=income.toFixed(1)
    fc.changeone("parking",parkingtime.parking,"income",income)
  }
  else if(parkingtime.kind==1){
    let t=parkingtime.time.split("-")
    t=t[0].split(".").concat(t[1].split("."))
    let hour=parseInt(t[8])-parseInt(t[3])
    let minute=parseInt(t[9])-parseInt(t[4])
    let income=(hour*parkingtime.price+minute/60*parkingtime.price)*7
    income=income.toFixed(1)
    fc.changeone("parking",parkingtime.parking,"income",income)
  }
}