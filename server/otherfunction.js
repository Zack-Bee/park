const fc = require('./function')
let mysql = require('mysql');
var async = require('async');
var request = require('request');
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

