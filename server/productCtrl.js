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
    });
  },
  GetFourStainless: function(req, res, next) {
    db.get_four_stainless(function(err, four) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(four);
      }
    });
  },
  GetFourSunGlasses: function(req, res, next) {
    db.get_four_sunglass(function(err, four) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(four);
      }
    });
  },
  GetOne: function(req, res, next) {
    // console.log(req.params.productId);
    db.get_one([req.params.productId], function(err, one) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(one);
      }
    });
  },
  PutUser: function(req, res, next) {
    db.post_user([req.body.firstname, req.body.lastname, req.body.username, req.body.email, req.body.password], function(err, user) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(user);
      }
    });
  },
  GetUser: function(req, res, next) {
    db.get_user(function(err, user) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(user);
      }
    });
  },
  login: function(req, res, next) {
    db.get_user([req.body.name, req.body.password], function(err, user) {
      if(err) {
        return res.status(500).send(err);
      }
      else {
        return res.send(user);
      }
    });
  }
};
