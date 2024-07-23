    //var cordova = require('cordova');
    //var argscheck = require('cordova/argscheck');
    //var channel = require('cordova/channel');
    var exec = require('cordova/exec');

    var NP={};
    NP.isFakePhoto= function (successCallback,  pb, photo) {
        exec(successCallback, null, 'FakePhoto', 'isFakePhoto', [pb, photo]);
    };
    module.exports = NP; 

