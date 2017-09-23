
var exec = require('cordova/exec');

var PLUGIN_NAME = 'FixIOSKeyboard';

var FixIOSKeyboard = {
  echo: function(phrase, cb) {
    exec(cb, null, PLUGIN_NAME, 'echo', [phrase]);
  },
  cacheKeyboard: function(cb) {
    exec(cb, null, PLUGIN_NAME, 'cacheKeyboard', []);
  }
};

module.exports = FixIOSKeyboard;
