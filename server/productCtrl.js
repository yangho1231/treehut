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
    })
  }
}
