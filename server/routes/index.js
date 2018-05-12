/**
 * ajax 服务路由集合
 */
const router = require('koa-router')(
    //{prefix: '/weapp'}
)

const ct = require('../../server/controllers/controllers')


router.post('/login', ct.login)

module.exports = router