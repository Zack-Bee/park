const fc = require('./function')
const ofc = require('./otherfunction')
const mysql = require('mysql');
const async = require('async');
const request = require('request');
exports.part = function (lola) {
  la = parseFloat(lola.split(",")[0])
  lo = parseFloat(lola.split(",")[1])
  if (41.5 < la && la< 42.4) {
    if (123.1 < lo && lo< 123.7) {
      if (41.5 < la && la< 41.8 && 123.1 < lo && lo< 123.4) { return "shenyang1" }
      else if (41.5 < la && la< 41.8 && 123.4 < lo && lo< 123.7) { return "shenyang2" }
      else if (41.8 < la && la< 42.1 && 123.1 < lo && lo< 123.4) { return "shenyang3" }
      else if (41.8 < la && la< 42.1 && 123.4 < lo && lo< 123.7) { return "shenyang4" }
      else if (42.1 < la && la< 42.4 && 123.1 < lo && lo< 123.4) { return "shenyang5" }
      else if (42.1 < la && la< 42.4 && 123.4 < lo && lo< 123.7) { return "shenyang6" }
    }
  }
  else if (39.4 < la && la< 40.3) {
    if (115.9 < lo && lo< 116.8) {
      if (39.4 < la && la< 39.7 && 115.9 < lo && lo< 116.2) { return "beijing1" }
      else if (39.4 < la && la< 39.7 && 116.2 < lo && lo< 116.5) { return "beijing2" }
      else if (39.4 < la && la< 39.7 && 116.5 < lo && lo< 116.8) { return "beijing3" }
      else if (39.7 < la && la< 40.0 && 115.9 < lo && lo< 116.2) { return "beijing4" }
      else if (39.7 < la && la< 40.0 && 116.2 < lo && lo< 116.5) { return "beijing5" }
      else if (39.7 < la && la< 40.0 && 116.5 < lo && lo< 116.8) { return "beijing6" }
      else if (40.0 < la && la< 40.3 && 115.9 < lo && lo< 116.2) { return "beijing7" }
      else if (40.0 < la && la< 40.3 && 116.2 < lo && lo< 116.5) { return "beijing8" }
      else if (40.0 < la && la< 40.3 && 116.5 < lo && lo< 116.8) { return "beijing9" }
    }
  }
  else if (45.6 < la && la< 45.9) {
    if (126.5 < lo && lo< 126.8) {
      return "haerbin"
    }
  }
  else if (43.7 < la && la< 44.0) {
    if (125.15 < lo && lo< 125.45) {
      return "changchun"
    }
  }
  else if (22.5 < la && la< 23.4) {
    if (112.6 < lo && lo< 114.4) {
      if (22.5 < la && la< 22.8 && 112.6 < lo && lo< 112.9) { return "guangshen1" }
      else if (22.5 < la && la< 22.8 && 112.9 < lo && lo< 113.2) { return "guangshen2" }
      else if (22.5 < la && la< 22.8 && 113.2 < lo && lo< 113.5) { return "guangshen3" }
      else if (22.5 < la && la< 22.8 && 113.5 < lo && lo< 113.8) { return "guangshen4" }
      else if (22.5 < la && la< 22.8 && 113.8 < lo && lo< 114.1) { return "guangshen5" }
      else if (22.5 < la && la< 22.8 && 114.1 < lo && lo< 114.4) { return "guangshen6" }
      else if (22.8 < la && la< 23.1 && 112.6 < lo && lo< 112.9) { return "guangshen7" }
      else if (22.8 < la && la< 23.1 && 112.9 < lo && lo< 113.2) { return "guangshen8" }
      else if (22.8 < la && la< 23.1 && 113.2 < lo && lo< 113.5) { return "guangshen9" }
      else if (22.8 < la && la< 23.1 && 113.5 < lo && lo< 113.8) { return "guangshen10" }
      else if (22.8 < la && la< 23.1 && 113.8 < lo && lo< 114.1) { return "guangshen11" }
      else if (22.8 < la && la< 23.1 && 114.1 < lo && lo< 114.4) { return "guangshen12" }
      else if (23.1 < la && la< 23.4 && 112.6 < lo && lo< 112.9) { return "guangshen13" }
      else if (23.1 < la && la< 23.4 && 112.9 < lo && lo< 113.2) { return "guangshen14" }
      else if (23.1 < la && la< 23.4 && 113.2 < lo && lo< 113.5) { return "guangshen15" }
      else if (23.1 < la && la< 23.4 && 113.5 < lo && lo< 113.8) { return "guangshen16" }
      else if (23.1 < la && la< 23.4 && 113.8 < lo && lo< 114.1) { return "guangshen17" }
      else if (23.1 < la && la< 23.4 && 114.1 < lo && lo< 114.4) { return "guangshen18" }
    }
  }
  else if (38.8 < la && la< 39.0) {
    if (121.5 < lo && lo< 121.7) {
      return "dalian"
    }
  }
  else if (30.8 < la && la< 31.4) {
    if (121.0 < lo && lo< 121.9) {
      if (30.8 < la && la< 31.1 && 121.0 < lo && lo< 121.3) { return "shanghai1" }
      else if (30.8 < la && la< 31.1 && 121.3 < lo && lo< 121.6) { return "shanghai2" }
      else if (30.8 < la && la< 31.1 && 121.6 < lo && lo< 121.9) { return "shanghai3" }
      else if (31.1 < la && la< 31.4 && 121.0 < lo && lo< 121.3) { return "shanghai4" }
      else if (31.1 < la && la< 31.4 && 121.3 < lo && lo< 121.6) { return "shanghai5" }
      else if (31.1 < la && la< 31.4 && 121.6 < lo && lo< 121.9) { return "shanghai6" }
    }
  }
  else { return "parking" }
}
exports.getFlatternDistance = function (lat1, lng1, lat2, lng2, callback) {
  lat1 = parseFloat(lat1)
  lat2 = parseFloat(lat2)
  lng1 = parseFloat(lng1)
  lng2 = parseFloat(lng2)
  return new Promise(function (resolve, reject) {
    var EARTH_RADIUS = 6378137.0;    //单位M
    const PI = Math.PI;

    function getRad(d) {
      return d * PI / 180.0;
    }
    let f = getRad((lat1 + lat2) / 2);
    let g = getRad((lat1 - lat2) / 2);
    let l = getRad((lng1 - lng2) / 2);

    let sg = Math.sin(g);
    let sl = Math.sin(l);
    let sf = Math.sin(f);

    let s, c, w, r, d, h1, h2;
    let a = EARTH_RADIUS;
    let fl = 1 / 298.257;

    sg = sg * sg;
    sl = sl * sl;
    sf = sf * sf;

    s = sg * (1 - sl) + (1 - sf) * sl;
    c = (1 - sg) * (1 - sl) + sf * sl;

    w = Math.atan(Math.sqrt(s / c));
    r = Math.sqrt(s * c) / w;
    d = 2 * w * a;
    h1 = (3 * r - 1) / 2 / c;
    h2 = (3 * r + 1) / 2 / s;
    resolve(1);

    callback(d * (1 + fl * (h1 * sf * (1 - sg) - h2 * (1 - sf) * sg)));
  })
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
exports.selectallparking = async (callback) => {
  let option=[]
  await fc.selectoneparking("shenyang1",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shenyang2",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shenyang3",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shenyang4",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shenyang5",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shenyang6",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shanghai1",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shanghai2",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shanghai3",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shanghai4",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shanghai5",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("shanghai6",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing1",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing2",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing3",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing4",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing5",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing6",function(op){
    option=option.concat(op)
  })

  await fc.selectoneparking("beijing7",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing8",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("beijing9",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen1",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen2",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen3",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen4",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen5",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen6",function(op){
    option=option.concat(op)
  })

  await fc.selectoneparking("guangshen7",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen8",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen9",function(op){
    option=option.concat(op)
  })

  await fc.selectoneparking("guangshen10",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen12",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen13",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen14",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen15",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen16",function(op){
    option=option.concat(op)
  })

  await fc.selectoneparking("guangshen17",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen18",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("guangshen11",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("haerbin",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("changchun",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("dalian",function(op){
    option=option.concat(op)
  })
  await fc.selectoneparking("parking",function(op){
    option=option.concat(op)
    callback(option)
  })
}

  


exports.addpt = function () {
  ofc.selectallparking(function (option) {
    for (let i = 0; i < option.length; i++) {
      fc.selectparkingtime("parking", option[i].id, function (opt) {
        if (opt == '') {
          fc.addparkingtime(option[i].id, "2018.1.1.8.00-2020.1.7.22.00", 4, 0, 4)
        }
      })
    }
  })
}
exports.addtest = function (a, b, c, d, city,num) {
  return new Promise(function (resolve, reject) {
    function randomNum(minNum, maxNum) {
      switch (arguments.length) {
        case 1:
          return parseInt(Math.random() * minNum + 1, 10);
          break;
        case 2:
          return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10);
          break;
        default:
          return 0;
          break;
      }
    }
    function sleep(numberMillis) {
      var now = new Date();
      var exitTime = now.getTime() + numberMillis;
      while (true) {
        now = new Date();
        if (now.getTime() > exitTime)
          return;
      }
    }
    let aa = randomNum(a * 1000000, b * 1000000) / 1000000
    let bb = randomNum(c * 1000000, d * 1000000) / 1000000
    //H4CBZ-CPYWK-2ZOJO-ACLVD-POMLE-FBBDZ
    key=["IISBZ-ZGSCK-HHCJO-ASLUG-KEFLF-44BK6","MD4BZ-Y53KG-DBAQX-IFQCN-34SB3-ZEBMX","CBCBZ-KDNCV-KAKPQ-UXCIY-XJO52-MYFVE","42TBZ-EHSKS-IULOI-62K2Q-IKAA6-HDB2E","H4CBZ-CPYWK-2ZOJO-ACLVD-POMLE-FBBDZ","65QBZ-SJN6J-ZSPFJ-KMDGN-IX7EE-2ABHU","KYGBZ-4SR6F-FKWJ3-NQETZ-D47TH-YDBJO","L6CBZ-G4ULV-LA3PP-UDMJ2-ZDS5O-ZTFOM","QFQBZ-QQCLF-IEFJL-NY7UQ-6SI7O-AHF6B","FEMBZ-TQGLS-GUXOY-6LAX6-5OLAJ-RDBYM"]
    request('http://apis.map.qq.com/ws/geocoder/v1/?location=' + aa + ',' + bb + '&key='+key[num], function (error, response, body) {
      if (error) {
        reject(error);
      }
      else if (response.statusCode == 200) {
        resolve(body);
        if (JSON.parse(body).result.pois != "") {
          fc.addparking(city + "-test", 4, city + "测试停车场", JSON.parse(body).result.formatted_addresses.recommend, aa + "," + bb, 1, "/upload/odpVJ5Lutx-arHao6e2yZXr_tUOs")
        }
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

exports.GetDateDiff = function (startTime, endTime, diffType = "minute") {

  //将xxxx-xx-xx的时间格式，转换为 xxxx/xx/xx的格式
  startTime = startTime.replace(/\-/g, "/");

  endTime = endTime.replace(/\-/g, "/");

  //将计算间隔类性字符转换为小写

  diffType = diffType.toLowerCase();

  var sTime = new Date(startTime);      //开始时间

  var eTime = new Date(endTime);  //结束时间

  //作为除数的数字

  var divNum = 1;

  switch (diffType) {

    case "second":

      divNum = 1000;

      break;

    case "minute":

      divNum = 1000 * 60;

      break;

    case "hour":

      divNum = 1000 * 3600;

      break;

    case "day":

      divNum = 1000 * 3600 * 24;

      break;

    default:

      break;

  }
  return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(divNum));

}
exports.income = async (parkingId) => {
  let parkingtime
  function c(option) {
    parkingtime = option[0]
  }
  await fc.selectparkingtime("parking", parkingId, c)
  if (parkingtime.kind == 0) {
    let t = parkingtime.time.split("-")
    t = t[0].split(".").concat(t[1].split("."))
    let hour = parseInt(t[4]) - parseInt(t[1])
    let minute = parseInt(t[5]) - parseInt(t[2])
    let income = (hour * parkingtime.price + minute / 60 * parkingtime.price) * 7
    income = income.toFixed(1)
    fc.changeparking("parking", parkingtime.parking, "income", income)
  }
  else if (parkingtime.kind == 1) {
    let t = parkingtime.time.split("-")
    t = t[0].split(".").concat(t[1].split("."))
    let hour = parseInt(t[8]) - parseInt(t[3])
    let minute = parseInt(t[9]) - parseInt(t[4])
    let income = (hour * parkingtime.price + minute / 60 * parkingtime.price) * 7
    income = income.toFixed(1)
    fc.changeparking("parking", parkingtime.parking, "income", income)
  }

}
