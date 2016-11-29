 CREATE TABLE image (
    img_id INT references products(product_id),
    img1 TEXT,
    img2 TEXT,
    img3 TEXT,
    img4 TEXT,
    img5 TEXT,
    img6 TEXT
  );

  /*INSERT IMAGE*/
  INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (1,'http://cdn.shopify.com/s/files/1/0667/0685/products/004-1_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/004-1-3_grande.jpg?v=1479952382',
                                                                         'http://cdn.shopify.com/s/files/1/0667/0685/products/004-2-2_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT004_grande.jpg?v=1479952382',
                                                                         'http://cdn.shopify.com/s/files/1/0667/0685/products/004-2_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-2_grande.jpg?v=1479952382');

                                                                       INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (4,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-2-2_grande.jpg?v=1479952605','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-3_grande.jpg?v=1479952605',
                                                                                                                                                'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-8_grande.jpg?v=1479952605','http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_6437_grande.jpg?v=1479952605',
                                                                                                                                                'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-3331_grande.jpg?v=1479952605','http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_5cbea988-253b-44cf-adc4-2e1d5fa5f4d4_grande.JPG?v=1479952605');
/* INSERT PRODUCTS*/
                                                                       INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
                                                                       VALUES('WOODEN WATCH // THEO', 69, 'The Ebony wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
                                                                                74, '• Watch made from Real Wood
                                                                         • Japanese Quartz movement
                                                                         • Strap made from genuine leather
                                                                         • High Quality Soft Genuine Leather for your everyday wear
                                                                         • Minimalist Design
                                                                         • Durable & Long Lasting
                                                                         • Next business day shipping if no engraving services needed.', '1.7 Inches');

                                                                       INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
                                                                                                                                           VALUES('ALL WOOD WATCH // ALL EBONY THEO BLUE', 95, 'The all ebony wooden watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Strap and case are made of 100% ebony.', 'WATCH',
                                                                                                                                                      110, '• Handmade in San Francisco, USA
                                                                      • Ship Next Business Day with rush engraving option!
                                                                      • Watch and Watch Band Made from Real Wood
                                                                      • Japanese Quartz Movement
                                                                      • Clasp Made from Stainless Steel Tri-Fold with Push Buttons
                                                                      • Minimalist Design
                                                                      • Durable & Long Lasting', '1.7 Inches');
