const db = require('../db');

module.exports = db.defineModel('owner', {
    idcard: db.STRING(100),
    name: db.STRING(100),
    gender: db.BOOLEAN
});