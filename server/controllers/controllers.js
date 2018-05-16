const fc = require('../../server/function')
const fs = require('fs');
const async = require('async');

exports.login = async (ctx, next) => {
  code = ctx.request.body.code
  function c(option) {
    ctx.response.body = { openid: JSON.parse(option).openid, err: JSON.parse(option) }
    return
  }
  var res = await fc.xcxlogin(code, c);
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
    }

    function cc(option) {
      using = fc.using(option)
      if (using == 0) {
        all[m].isOpen = false
        all[m].rentPark = 0
      }
      else {
        all[m].isOpen = true
        all[m].rentPark = using.rentnumber
      }
      m = m + 1
      return
    }

    function c(option) {
      console.log("cing")
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
        }
        else {
          ctx.body = { err: "kind不是3也不是4" }
          userparkserr = 1
        }
        all.push(t)
      }
    }
    await fc.selectparking("ownerId", ctx.request.body.openid, c)
    console.log("parking ok")
    if (userparkserr == 1) { return }
    var m = 0
    while (m < parking.length) {
      await fc.selectparkingtime("parking", parking[m].id, cc)
      console.log("parkingtime ing..")
    }
    console.log("parkingtime over")
    ctx.response.body = all
    return
  }
}

exports.userplatenumber = async (ctx, next) => {
  openid = ctx.request.body.openid
  var carnumber
  function c(option) {
    if(option[0]){
    ctx.body = {carnumber: option[0].carnumber}
  }
  }
  await fc.selectuser("openid", openid, c)
}

exports.test = async (ctx, next) => {
  function c(option){console.log(option)}
  await fc.selectowner("id", ctx.request.body.openid, c)
  await fc.selectowner("id", ctx.request.body.openid, c)
  await fc.selectowner("id", ctx.request.body.openid, c)
  ctx.body = { message: "没事" }
}