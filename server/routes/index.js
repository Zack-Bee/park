/**
 * ajax 服务路由集合
 */
const router = require('koa-router')(
    //{prefix: '/weapp'}
)

const ct = require('../../server/controllers/controllers')

router.post('/login', ct.login)
router.post('/user/parks',ct.userparks)
router.post('/user/platenumber', ct.userplatenumber)

module.exports = router