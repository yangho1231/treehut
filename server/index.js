var express = require('express');
var bodyParser = require('body-parser');
var session = require('express-session');
var cors = require('cors');
var config = require('./../config.js');
var massive = require('massive');

var massive = massive.connectSync({connectionString: config.connectionString});

var app = module.exports =express();

app.use(express.static(__dirname + '/../public'));

app.use(bodyParser.json());

var corsOptions = {
  origin: 'http://localhost:3000'
};
app.use(cors(corsOptions));
app.set('db', massive);
var db = app.get('db');
var controller = require('./productCtrl.js');

app.get('/api/product', controller.GetAll);
app.get('/api/product/four', controller.GetFour);
app.get('/api/product/stain', controller.GetFourStainless);
app.get('/api/product/sunglass', controller.GetFourSunGlasses);

app.listen(3000, function() {
  console.log("listening");
});
