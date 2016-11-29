var app = require('./index');
var db = app.get('db');
module.exports = {
  GetAll: function(req, res, next) {
    db.get_all(function(err, all) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(all);

      }
    });
  },
  GetFour: function(req, res, next) {
    db.get_four(function(err, four) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(four);
      }
    })
  },
  GetFourStainless: function(req, res, next) {
    db.get_four_stainless(function(err, four) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(four);
      }
    })
  },
  GetFourSunGlasses: function(req, res, next) {
    db.get_four_sunglass(function(err, four) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(four);
      }
    })
  }
};
