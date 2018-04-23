const db = require('../db');

module.exports = db.defineModel('parking', {
    ownerId: db.ID,
    name: db.STRING(100),
    location: db.STRING(100),
    lease: db.STRING(100),
    number: db.STRING(100)
});