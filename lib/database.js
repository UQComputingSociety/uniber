var mysql = require('mysql');

var config = require('../config');

var conn = null;

module.exports = function() {
    if (!conn) {
        var conn = mysql.createConnection(config.mysql);
    }
    
    return conn;
}