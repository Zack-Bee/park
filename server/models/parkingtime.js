const db = require('../db');

module.exports = db.defineModel('parkingtime', {
    parking: db.ID,
    time: db.STRING(100),
    price: db.STRING(100)
});