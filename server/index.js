const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const cors = require('cors');
const config = require('./../config.js');
var massive = require('massive');
const passport = require('passport');
const GoogleStrategy = require('passport-google-oauth20').Strategy;
var massive = massive.connectSync({connectionString: config.connectionString});

const app = module.exports =express();

//passport
app.use(passport.initialize());
app.use(passport.session());
//
app.use(express.static(__dirname + '/../public'));
app.use(bodyParser.json());
app.use(session({
  secret: config.secret,
  resave: true,
  saveUninitialized: true
}));

passport.use(new GoogleStrategy({
  clientID: config.googleId,
  clientSecret: config.googleSecret,
  callbackURL: 'http://localhost:3000/auth/google/callback'
}, (accessToken, refreshToken, profile, done) => {
  db.users.findOne({google_id: profile.id}, (err, dbRes) => {
    // console.log("dbRes", dbRes);
    if(!dbRes) {
      console.log("User not found. Creating...");
      db.users.insert({name: profile.displayName, type: 'client', google_id: profile.id, photo: profile.photos[0].value}, (err, dbRes) => {
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
passport.serializeUser((user, done) => {
  done(null, user);
});
passport.deserializeUser((obj, done) => {
  done(null, obj);
});
const corsOptions = {
  origin: 'http://localhost:3000'
};
app.use(cors(corsOptions));
app.set('db', massive);
const db = app.get('db');
const controller = require('./productCtrl.js');

app.get('/auth/google', passport.authenticate('google',{scope: ['https://www.googleapis.com/auth/plus.me', 'https://www.googleapis.com/auth/userinfo.email', 'https://www.googleapis.com/auth/userinfo.profile']}));
app.get('/auth/google/callback', passport.authenticate('google', { failureRedirect: '/#/'}), (req,res) => {
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
app.get('/api/product/watches/1.3-inches', controller.GetWatches13);
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


app.listen(3000, () => {
  console.log("listening");
});
