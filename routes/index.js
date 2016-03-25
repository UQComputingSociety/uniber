var express = require('express');

var conn = require('../lib/database')();
var router = express.Router();

/* GET index page. */
router.get(['/', '/register', '/about', '/contact'], function (req, res, next) {
    res.render('index', {
        
    });
});

module.exports = router;
