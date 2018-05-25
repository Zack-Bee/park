const fc = require('../../server/function')
const ofc = require('../../server/otherfunction')
const fs = require('fs');
const async = require('async');

exports.login = async (ctx, next) => {
  code = ctx.request.body.code
  function c(option) {
    ctx.response.body = { openId: JSON.parse(option).openid, err: JSON.parse(option) }
  }
  var res = await ofc.xcxlogin(code, c);
}


exports.userparks = async (ctx, next) => {
  var userparkserr
  if (ctx.request.body.type == "get") {
    var all = []
    var parking
    var parkingtime = []
    var isOpen
    var rentPark

    function KIND3() {
      this.parkName = "return err"
      this.kind = "return err"
      this.allPark = "return err"
      this.rentPark = "return err"
      this.parkId = "return err"
      this.isOpen = "return err"
    }

    function KIND4() {
      this.parkName = "return err"
      this.kind = "return err"
      this.parkId = "return err"
      this.isOpen = "return err"
      this.allPark = "return err"
      this.rentPark = "return err"
      this.expectedRevenue = "return err"
    }

    function cc(option) {
      using = ofc.using(option)
      if (using == 0) {
        all[m].isOpen = false
        all[m].rentPark = 0
        all[m].expectedRevenue = 0
      }
      else {
        all[m].isOpen = true
        all[m].rentPark = using.rentNumber
        all[m].expectedRevenue = ofc.income(option[0].id)
      }
      m = m + 1
      //ofc.cleanparkingtime(option)
    }

    function c(option) {
      parking = option
      let t
      for (i = 0; i < option.length; i++) {
        if (option[i].kind == 3) {
          t = new KIND3
          t.parkName = option[i].name
          t.kind = option[i].kind
          t.allPark = option[i].number
          t.rentPark = "waiting"
          t.parkId = option[i].id
          t.isOpen = "waiting"
        }
        else if (option[i].kind == 4) {
          t = new KIND4
          t.parkName = option[i].name
          t.kind = option[i].kind
          t.parkId = option[i].id
          t.isOpen = "waiting"
          t.allPark = option[i].number
          t.rentPark = "waiting"
          t.expectedRevenue = "waiting"
        }
        else {
          ctx.body = { err: "kind不是3也不是4" }
          userparkserr = 1
        }
        all.push(t)
      }
    }
    await fc.selectparking("openId", ctx.request.body.openId, c)
    if (userparkserr == 1) { return }
    var m = 0
    while (m < parking.length) {
      await fc.selectparkingtime("parking", parking[m].id, cc)
    }
    ctx.response.body = all
    return
  }
  else if (ctx.request.body.type == "delete") {
    fc.deleteparking(ctx.request.body.parkId)
    await fc.selectparkingtime("parking", ctx.request.body.parkId, function (option) {
      fc.deleteparkingtime(option[0].id)})
  }
  else if (ctx.request.body.type == "open") {
    fc.changeone("parking",ctx.request.body.parkId,"isOpen",1)
    await fc.selectparkingtime("parking", ctx.request.body.parkId, function (option) {
      for (let i = 0; i < option.length; i++) {
        if (option) {
          fc.deleteparkingtime(option[i].id)
        }
      }
    })
    var now = new Date()
    var year = now.getFullYear()
    var month = now.getMonth() + 1
    var day = now.getDate()
    var hour = now.getHours()
    var minute = now.getMinutes()
    if (ctx.request.body.kind == 3) {
      if (ctx.request.body.openType == "weekly") {
        await fc.addparkingtime(ctx.request.body.parkId,
          ctx.request.body.startDay + "."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + ctx.request.body.endDay + "."
          + ctx.request.body.endTime.replace(/:/g, "."),
          ctx.request.body.price, null, 0)
        //这里要添加更新rentNumber的东西
      }
      else if (ctx.request.body.openType == "once") {
        await fc.addparkingtime(ctx.request.body.parkId,
          year + "." + month + "." + day + "."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + year + "." + month + "." + day + "."
          + ctx.request.body.endTime.replace(/:/g, "."),
          ctx.request.body.price, null, 1)
      }
      else if (ctx.request.body.openType == "date") {
        await fc.addparkingtime(ctx.request.body.parkId,
          ctx.request.body.startDay.replace(/-/g, ".") + "."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + ctx.request.body.endDay.replace(/-/g, ".") + "."
          + ctx.request.body.endTime.replace(/:/g, "."),
          ctx.request.body.price, null, 1)

      }
    }
    else if (ctx.request.body.kind == 4) {
      if (ctx.request.body.openType == "weekly") {
        await fc.addparkingtime(ctx.request.body.parkId,
          ctx.request.body.startDay + "."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + ctx.request.body.endDay + "."
          + ctx.request.body.endTime.replace(/:/g, "."), null, null, 0)
      }
      else if (ctx.request.body.openType == "once") {
        await fc.addparkingtime(ctx.request.body.parkId, year
          + "." + month + "." + day + "."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + year + "." + month + "." + day + "."
          + ctx.request.body.endTime.replace(/:/g, "."), null, null, 1)
      }
      else if (ctx.request.body.openType == "date") {
        await fc.addparkingtime(ctx.request.body.parkId,
          ctx.request.body.startDay.replace(/-/g, ".") + "."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + ctx.request.body.endDay.replace(/-/g, ".") + "."
          + ctx.request.body.endTime.replace(/:/g, "."), null, null, 1)
      }
    }
    fc.changeone("parking", ctx.request.body.parkId, "name", ctx.request.body.parkName)
  }
  else if (ctx.request.body.type == "detail") {
    var all
    var parking
    function KIND() {
      this.parkName = "return err"
      this.kind = "return err"
      this.isOpen = "return err"
      this.openType = "return err"
      this.startDay = "return err"
      this.endDay = "return err"
      this.startTime = "return err"
      this.endTime = "return err"
    }
    await fc.selectparking("parking", ctx.request.body.parkId, function(option) {
      parking = option
      let t
      t = new KIND
      t.parkName = option[0].name
      t.kind = option[0].kind
      t.isOpen = option[0].isOpen
      t.openType = "waiting"
      t.startDay = "waiting"
      t.endDay = "waiting"
      t.startTime = "waiting"
      t.endTime = "waiting"
      all=t
    })
    await fc.selectparkingtime("parking", parking[0].id, function(option) {
      if (option) {
        let time = option[0].time
        time = time.split("-")
        let start = t[0]
        start = start.split(".")
        let end = t[1]
        end = end.split(".")
        if(start.length==3){
        all.openType = "weekly"
        all.startDay = start[0]
        all.endDay = end[0]
        all.startTime = start[1]+":"+start[2]
        all.endTime = end[1]+":"+end[2]
      }
      if(start.length==5){
        if(start[2]==end[2]){all.openType = "once"}
        else{all.openType = "date"}
        all.startDay = start[0]+"-"+start[1]+"-"+start[2]
        all.endDay = end[0]+"-"+end[1]+"-"+end[2]
        all.startTime = start[3]+":"+start[4]
        all.endTime = end[3]+":"+end[4]
      }
      }
      else {
        all.openType = null
        all.startDay = null
        all.endDay = null
        all.startTime = null
        all.endTime = null
      }
    })
    ctx.response.body = all
  }
  else if (ctx.request.body.type == "add") {
    fc.addparking(ctx.request.body.openId,
      ctx.request.body.kind, null, null,
      ctx.request.body.longitude + "," + ctx.request.body.latitude, null, null)
    fc.selectowner("openId", ctx.request.body.openId, function (option) {
      if (a == "") {
        fc.addowner(ctx.request.body.openId)
      }
    })
  }
  else if (ctx.request.body.type == "close") {
    fc.changeone("parking",ctx.request.body.parkId,"isOpen",0)
    function c(option) {
      for (let i = 0; i < option.length; i++) {
        fc.deleteparkingtime(option[i].id)
      }
    }
    fc.selectparkingtime("parking", ctx.request.body.parkId, c)
  }
}

exports.userplatenumber = async (ctx, next) => {
  if (ctx.request.body.type == "get") {
    let openId = ctx.request.body.openId
    let carNumber
    function c(option) {
      if (option[0]) {
        ctx.body = { carNumber: option[0].carNumber.split(".") }
      }
    }
    await fc.selectuser("openId", openId, c)
  }
  else if (ctx.request.body.type == "add") {
    function c(option) {
      if (option[0]) {

        Repeat = option[0].carNumber + "." + ctx.request.body.plateNumber
        Repeat = Repeat.split(".")
        cleanRepeat = ofc.unique(Repeat)
        let str = cleanRepeat[0]
        for (let i = 1; i < cleanRepeat.length; i++) {
          str = str + "." + cleanRepeat[i]
        }
        fc.changeou("user", ctx.request.body.openId, "carNumber", str)
        ctx.body = str
      }
      else {
        fc.adduser(ctx.request.body.openId, ctx.request.body.plateNumber)
        ctx.body = ctx.request.body.plateNumber
      }
    }
    await fc.selectuser("openId", ctx.request.body.openId, c)
  }
}

exports.upload = async (ctx, next) => {
  const file = ctx.request.body.files.file; // 获取上传文件
  const reader = fs.createReadStream(file.path); // 创建可读流
  const ext = file.name.split('.').pop(); // 获取上传文件扩展名
  const upStream = fs.createWriteStream(`upload/`+ctx.request.body.openId+`/`+file.name); // 创建可写流
  reader.pipe(upStream); // 可读流通过管道写入可写流
  return ctx.body = '上传成功';
}