var express = require('express');
var bodyParser = require('body-parser');
var session = require('express-session');
var cors = require('cors');
// var config = require('./../config.js');
var massive = require('massive');
var passport = require('passport');
var GoogleStrategy = require('passport-google-oauth20').Strategy;
var massive = massive.connectSync({connectionString: process.env.elephantUrl});

var app = module.exports =express();
app.use(express.static(__dirname + '/../public'));
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/../public/index.html');
});

//passport
app.use(passport.initialize());
app.use(passport.session());
//
app.use(bodyParser.json());
app.use(session({
  secret: process.env.secret,
  resave: true,
  saveUninitialized: true
}));

passport.use(new GoogleStrategy({
  clientID: process.env.googleId,
  clientSecret: process.env.googleSecret,
  callbackURL: 'https://treehutclone.herokuapp.com/auth/google/callback'
}, function(accessToken, refreshToken, profile, done) {
  db.users.findOne({google_id: profile.id}, function(err, dbRes) {
    // console.log("dbRes", dbRes);
    if(!dbRes) {
      console.log("User not found. Creating...");
      db.users.insert({name: profile.displayName, type: 'client', google_id: profile.id, photo: profile.photos[0].value}, function(err, dbRes) {
        // console.log(profile);
        if(err) {
          // console.log(err);
          return err;
        } else {
          return done(null, dbRes);
        }
      });
    }
    else {
      console.log("Existing user found.");
      // console.log(profile);
      return done(null, dbRes);
    }
  });
}));
passport.serializeUser(function(user, done) {
  done(null, user);
});
passport.deserializeUser(function(obj, done) {
  done(null, obj);
});
var corsOptions = {
  origin: 'https://treehutclone.herokuapp.com'
};
app.use(cors(corsOptions));
app.set('db', massive);
var db = app.get('db');
var controller = require('./productCtrl.js');

app.get('/auth/google', passport.authenticate('google',{scope: ['https://www.googleapis.com/auth/plus.me', 'https://www.googleapis.com/auth/userinfo.email', 'https://www.googleapis.com/auth/userinfo.profile']}));
app.get('/auth/google/callback', passport.authenticate('google', { failureRedirect: '/#/'}), function(req,res) {
  res.redirect('/#/');
});
app.get('/me', function(req, res) {
  res.send(req.user);
});
app.get('/api/product/page/:id', controller.GetAll);
app.get('/api/product/four', controller.GetFour);
app.get('/api/product/stain', controller.GetFourStainless);
app.get('/api/product/sunglass', controller.GetFourSunGlasses);
app.get('/api/product/watches', controller.GetWatches);
app.get('/api/product/watches/1.7-inches', controller.GetWatches17);
app.get('/api/product/sunglasses', controller.GetSunglasses);
app.get('/api/product/:productId', controller.GetOne);
app.post('/api/user', controller.PutUser);
app.get('/api/user', controller.GetUser);
app.post('/api/login', controller.login);
app.post('/api/product/', controller.pageNum);
app.post('/api/order', controller.placeOrder);
app.get('/api/cart/:id', controller.getCart);
app.get('/api/cartinfo', controller.getCartTotal);
app.post('/api/cart', controller.addToCart);
app.put('/api/updateCart', controller.updateCart);
app.get('/api/orders/:id', controller.getOrder);
app.get('/api/orderTotal/:id', controller.getOrderTotal)

app.post('/api/remove-product', controller.deleteProduct);


app.listen(process.env.PORT, function() {
  console.log("listening");
});
