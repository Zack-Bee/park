const db = require('../db');

module.exports = db.defineModel('owner', {
    name: db.STRING(100),
    gender: db.BOOLEAN,
    idcard: db.STRING(100)
});