var app = require('./index');
var db = app.get('db');
module.exports = {
  GetAll: function(req, res, next) {
    var offset = req.params.id * 21;
    db.get_all(offset, function(err, all) {
      if(err) return res.status(500).send(err);
      db.getCount(function(err, count){
        if(err) return next(err)
        res.send({all: all, count: count})
      })
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
    db.check_username([req.body.username], function(err, username) {
      console.log(username);
      if(err) return next(err);
      else if(username[0]) res.send("username taken");
        else if (!username[0]) {    db.post_user([req.body.firstname, req.body.lastname, req.body.username, req.body.email, req.body.password], function(err, user) {
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
  login: function(req, res, next) {
    db.get_user([req.body.name, req.body.password], function(err, user) {
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
    db.get_page_num(offset, function(err, pageNum) {
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
    // console.log(req.body.user_id, req.body.cart);
    db.orders.insert({user_id: req.body.user_id, ordered_data: new Date()}, function(err, order) {
      if(err) {
        res.status(500).send(err);
      }
      else {
        for (var i = 0; i < req.body.cart.length; i++) {
          db.order_item.insert({order_id: order.order_id, product_id: req.body.cart[i].product.product_id, quantity: req.body.cart[i].quantity}, function(err, order_item) {
            if (err) {
            }
            else {
              console.log(order_item);
            }
          });
        }
        res.send(order);
      }
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
  getCart: function(req, res, next) {
    db.get_existing_cart([req.params.id], function(err, cart) {
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
  GetSunglasses: function(req, res, next) {
    console.log("sunglasses");
    db.get_sunglasses(function(err, getAll) {
      if(err) {
        return next(err);
      }
      else {
        res.send(getAll);
      }
    });
  },
  addToCart: function(req, res, next) {
    // res.send(req.body);
    db.get_order(req.body.userId, function(err, order) {
      if(err) return next(err);

      if(order[0] && !order[0].checked_out) {
        console.log(order);
        db.add_cart([order[0].order_id, req.body.product, req.body.quantity], function(err, data) {
          if(err) return next(err);
          db.get_cart(order[0].order_id, function(err, cart) {
            if(err) return next(err);
            db.get_total(order[0].order_id, function(err, total) {
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
            db.add_cart([order[0].order_id, req.body.product, req.body.quantity],
            function(err, data) {
              if(err) return next(err);
              db.get_cart(order[0].order_id, function(err, cart) {
                if(err) return next(err);
                db.get_total(order[0].order_id, function(err, total) {
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
  },


};
