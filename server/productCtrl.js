var app = require('./index');
var db = app.get('db');
module.exports = {
  GetAll: function(req, res, next)  {
    var offset = req.params.id * 21;
    db.get_all(offset, function(err, all)  {
      if(err) return res.status(500).send(err);
      db.getCount(function(err, count){
        if(err) return next(err);
        res.send({all: all, count: count});
      });
    });
  },
  GetWatches: function(req, res, next)  {
    db.get_watches(function(err, watches) {
      if(err) return res.status(500).send(err);
      else return res.send(watches);
    });
  },
  GetWatches17: function(req, res, next) {
    db.get_watches_17(function(err, watches) {
      if(err) return res.status(500).send(err);
      else return res.send(watches);
    });
  },
  GetWatches13: function(req,res,next) {
    db.get_watches_13(function(err, watches) {
      if(err) return res.status(500).send(err);
      else return res.send(watches);
    });
  },
  GetSunglasses: function(req, res, next) {

    db.get_sunglasses(function(err, getAll) {
      if(err) return res.status(500).send(err);
      else return res.send(getAll);
    });
  },
  GetFour: function(req, res, next){
    db.get_four(function(err, four) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        res.send(four);
      }
    });
  },
  GetFourStainless: function(req, res, next)  {
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
    db.check_username([req.body.username], function(err, username) {
      console.log(username);
      if(err) return next(err);
      else if(username[0]) res.send("username taken");
        else if (!username[0]) {db.post_user([req.body.firstname, req.body.lastname, req.body.username, req.body.email, req.body.password], function(err, user) {
            if(err) return next(err);
            else {
              res.send(user);
            }
          });
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
  login: function(req, res, next)  {
    db.get_user([req.body.name, req.body.password], function(err, user)  {
      if(err) {
        return res.status(500).send(err);
      }
      else {
        return res.send(user);
      }
    });
  },
  pageNum: function(req, res, next) {
    var offset = req.query.page * 20;
    db.get_page_num(offset, function(err, pageNum)  {
      console.log(pageNum);
      if(err) {
        return res.status(500).send(err);
      }
      else {
        return res.send(pageNum);
      }
    });
  },
  placeOrder: function(req, res, next) {
    db.orders.update({user_id: req.body.user_id}, {checked_out: true}, function(err, order) {
      if (err) return res.status(500).json(err);
      return res.status(201).json(order);
    });
  },
  getOrder: function(req, res, next) {
    db.get_orders([req.params.id], function(err, orders) {
      if (err) return res.status(500).json(err);
      return res.status(200).json(orders);
    });
  },
  getOrderTotal: function(req, res, next) {
    console.log(req.params.id)
    db.get_order_total([req.params.id], function(err, orderTotal) {
      console.log(orderTotal);
      if (err) return res.status(500).json(err);
      return res.status(200).json(orderTotal);
    });
  },
  totalPrice: function(req,res,next) {
    db.total_price(function(err, data) {
      if(err) {
        res.send(err);
      }
      else {
        res.send(data);
      }
    });
  },
  getCartTotal: function(req, res, next) {
    db.get_total(req.body.order_id, function(err, order) {
      if(err) {
        res.send(err);
      }
      else {
        res.send(order);
      }
    });
  },
  getCart: function(req, res, next)  {
    console.log(req.params)
    db.get_existing_cart([req.params.id], function(err, cart) {
      console.log("Err: ", err);
      console.log("Cart: ", cart);
      if (err) return res.status(500).json(err);
      else return res.status(200).json(cart);
    });
  },
  updateCart: function(req, res, next) {
    db.update_cart([req.body.orderId, req.body.productId, req.body.quantity], function(err, orderItem) {
      if (err) return res.status(500).json(err);
      db.get_existing_cart([req.body.userId], function(err, cart) {
        if (err) return res.status(500).json(err);
        return res.status(200).json(cart);
      });
    });
  },
  deleteProduct: function(req, res, next) {
    console.log("delete", req.body.id);

    db.delete_product([req.body.productId], function(err, product) {

      if (err) return res.status(500).json(err);
      else db.get_existing_cart([req.body.userId], function(err, cart) {
            if (err) return res.status(500).json(err);
            else return res.status(200).json(cart);
          });
    });
  },
  addToCart: function(req, res, next)  {
    // res.send(req.body);
    db.get_order(req.body.userId, function(err, order)  {
      if(err) return next(err);

      if(order[0] && !order[0].checked_out) {


        db.add_cart([order[0].order_id, req.body.product, req.body.quantity, req.body.price], function(err, data)  {
          if(err) return next(err);
          db.get_cart(order[0].order_id, function(err, cart) {
            if(err) return next(err);
            db.get_total(order[0].order_id, function(err, total)  {
              if(err) return next(err);
              return res.send({
                cart: cart,
                total: total
              });
            });
          });
        });
      }
      else {
        db.create_order([req.body.userId, new Date()], function(err, order) {
          if(err) return next(err);
          db.get_order([req.body.userId], function(err, order) {
            if(err) return next(err);
            console.log(order[0].order_id, req.body.product, req.body.quantity);
            db.add_cart([order[0].order_id, req.body.product, req.body.quantity, req.body.price],
            function(err, data) {
              if(err) return next(err);
              db.get_cart(order[0].order_id, function(err, cart) {
                if(err) return next(err);
                db.get_total(order[0].order_id, function(err, total)  {
                  if(err) return next(err);
                  return res.send({
                    cart: cart,
                    total: total
                  });
                });
              });
            });
          });
        });
      }
    });
  }


};
