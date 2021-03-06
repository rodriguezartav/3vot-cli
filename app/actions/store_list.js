var fs = require('fs');
var Q = require("q");
var colors = require('colors');
var mime = require('mime')
var Path = require('path');

var Profile = require("../models/profile")

var Store = require("../models/store")

var Log = require("../utils/log")

var promptOptions = {
  user_name: null,
  public_dev_key: null
  
}

var profile = {}

function list( options ){
  promptOptions = options;
  
  Log.debug( "Listing all stores and apps in your 3VOT Profile", "actions/store_list", 24 )
  
  var deferred = Q.defer();

  callbacks = {
    done: function(profile){
      if(profile.length == 0) return  deferred.reject("Profile not found");
      var app, store, _i, _j, _len, _len1, _ref, _ref1;
      _ref = profile.stores;
      if(!profile.stores){
        console.log("Profile has not stores".red);
        return deferred.resolve("There are no stores");
      }
      
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        store = _ref[_i];
        console.log(store.name.underline.bold);
        _ref1 = store.full_apps;
        for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
          app = _ref1[_j];
          console.log("  " + app.name);
        }
      }

      deferred.resolve(arguments);


    },
    fail: function(err){
      deferred.reject(err);
    }
  }
  Store.callView( "with_apps", { user_name: promptOptions.user_name, public_dev_key: options.public_dev_key }, callbacks )
  
  return deferred.promise;
} 

module.exports = list;