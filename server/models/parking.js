const db = require('../db');

module.exports = db.defineModel('parking', {
    ownerId: db.ID,
    location: db.STRING(100),
    lease: db.STRING(100),
    number: db.STRING(100)
});