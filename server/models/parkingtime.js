const db = require('../db');

module.exports = db.defineModel('parkingtime', {
    time: db.STRING(100),
    price: db.STRING(100)
});