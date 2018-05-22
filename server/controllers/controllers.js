const fc = require('../../server/function')
const ofc = require('../../server/otherfunction')
const fs = require('fs');
const async = require('async');

exports.login = async (ctx, next) => {
  code = ctx.request.body.code
  function c(option) {
    ctx.response.body = { openId: JSON.parse(option).openId, err: JSON.parse(option) }
    return
  }
  var res = await ofc.xcxlogin(code, c);
  return
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
      }
      else {
        all[m].isOpen = true
        all[m].rentPark = using.rentNumber
      }
      m = m + 1
      ofc.cleanparkingtime(option)
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
          t.expectedRevenue = option[i].income
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
  }
  else if (ctx.request.body.type == "open") {
    var now = new Date()
    var year = now.getFullYear()
    var month = now.getMonth() + 1
    var day = now.getDate()
    var hour = now.getHours()
    var minute = now.getMinutes()
    if (ctx.request.body.kind == 3) {
      if (ctx.request.body.openType == "weekly") {
        fc.addparkingtime(ctx.request.body.parkId,
          ctx.request.body.startDay+"."
          + ctx.request.body.startTime.replace(/:/g, ".")
          + "-" + ctx.request.body.endDay+"."
          + ctx.request.body.endTime.replace(/:/g, "."), 
          ctx.request.body.price, null, 0)
        //这里要添加更新rentNumber的东西
      }
      else if (ctx.request.body.openType == "once") {
        fc.addparkingtime(ctx.request.body.parkId,
           year + "." + month + "." + day + "." 
           + ctx.request.body.startTime.replace(/:/g, ".") 
           + "-" + year + "." + month + "." + day + "." 
           + ctx.request.body.endTime.replace(/:/g, "."), 
           ctx.request.body.price, null, 1)
      }
      else if (ctx.request.body.openType == "date") {
        fc.addparkingtime(ctx.request.body.parkId, 
          ctx.request.body.startDay.replace(/-/g, ".") +"."
          + ctx.request.body.startTime.replace(/:/g, ".") 
          + "-" + ctx.request.body.endDay.replace(/-/g, ".") +"."
          + ctx.request.body.endTime.replace(/:/g, "."),
           ctx.request.body.price, null, 1)
      }
    }
    else if (ctx.request.body.kind == 4) {
      if (ctx.request.body.openType == "weekly") {
        fc.addparkingtime(ctx.request.body.parkId, 
          ctx.request.body.startDay +"."
          + ctx.request.body.startTime.replace(/:/g, ".") 
          + "-" + ctx.request.body.endDay +"."
          + ctx.request.body.endTime.replace(/:/g, "."), null, null, 0)
      }
      else if (ctx.request.body.openType == "once") {
        fc.addparkingtime(ctx.request.body.parkId, year 
          + "." + month + "." + day + "." 
          + ctx.request.body.startTime.replace(/:/g, ".") 
          + "-" + year + "." + month + "." + day + "." 
          + ctx.request.body.endTime.replace(/:/g, "."), null, null, 1)
      }
      else if (ctx.request.body.openType == "date") {
        fc.addparkingtime(ctx.request.body.parkId, 
          ctx.request.body.startDay.replace(/-/g, ".") +"."
          + ctx.request.body.startTime.replace(/:/g, ".") 
          + "-" + ctx.request.body.endDay.replace(/-/g, ".") +"."
          + ctx.request.body.endTime.replace(/:/g, "."), null, null, 1)
      }
    }
    fc.changeone("parking",ctx.request.body.parkId,"name",ctx.request.body.parkName)



  }
  else if (ctx.request.body.type == "add") {
    fc.addparking(ctx.request.body.openId,
       ctx.request.body.kind, null, null, 
       ctx.request.body.longitude + "," + ctx.request.body.latitude, null, null)
  }
  else if (ctx.request.body.type == "close") {
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

