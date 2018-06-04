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
router.post('/user/upload', ct.upload)
router.post('/user/history', ct.gethistory)
router.post('/parks', ct.parks)

module.exports = router