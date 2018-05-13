/**
 * ajax 服务路由集合
 */
const router = require('koa-router')(
    //{prefix: '/weapp'}
)

const ct = require('../../server/controllers/controllers')

router.get('/test', ct.test)
router.post('/login', ct.login)

module.exports = router