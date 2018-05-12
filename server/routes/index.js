/**
 * ajax 服务路由集合
 */
const router = require('koa-router')({
    prefix: '/weapp'
})

const login = require('../../server/controllers/login')


router.post('/login', login)

module.exports = router