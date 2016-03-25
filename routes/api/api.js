var express = require('express');

var conn = require('../../lib/database')();
var router = express.Router();

// Example
/* GET carparks */
router.get('/carparks', function( req, res, next) {
    conn.query('SELECT * FROM `car_parks`', function(err, rows, fields) {
        res.send(rows);
    });
});

module.exports = router;
