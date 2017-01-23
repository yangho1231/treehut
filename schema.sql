/*
Query for order total:

select o.order_id, sum(p.product_price * oi.quantity)as order_total
from orders o
join order_item oi on oi.order_id = o.order_id
join products p on oi.product_id = p.product_id
where o.order_id = 9
group by o.order_id;

Query for order_items:

select o.order_id, oi.product_id, oi.quantity, p.product_name, p.product_price, p.product_price * oi.quantity as subtotal
from orders o
join order_item oi on oi.order_id = o.order_id
join products p on oi.product_id = p.product_id
where o.order_id = 9;
*/

CREATE TABLE image (
img_id INT references products(product_id),
img1 TEXT,
img2 TEXT,
img3 TEXT,
img4 TEXT,
img5 TEXT,
img6 TEXT
);
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    google_id TEXT,
    photo TEXT
 )
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_firstname TEXT,
    user_lastname TEXT,
    user_name TEXT,
    user_email TEXT,
 );
 CREATE TABLE users1 (
  user_id SERIAL PRIMARY KEY,
  firstname TEXT,
  lastname TEXT,
  username TEXT NOT NULL UNIQUE,
  email TEXT,
  password TEXT
 )


/*INSERT IMAGE*/
INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (1,'http://cdn.shopify.com/s/files/1/0667/0685/products/004-1_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/004-1-3_grande.jpg?v=1479952382',
'http://cdn.shopify.com/s/files/1/0667/0685/products/004-2-2_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT004_grande.jpg?v=1479952382',
'http://cdn.shopify.com/s/files/1/0667/0685/products/004-2_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-2_grande.jpg?v=1479952382');

INSERT INTO image (img_id, img1, img2, img3, img4) VALUES (2,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-031-2_grande.jpg?v=1480018111','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT031-4_grande.jpg?v=1480018111',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-031_92c8055d-b0aa-4e29-87d9-85866ee334af_grande.jpg?v=1480018118','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-1_ba856cd9-53e7-40ef-b194-74bd319eef64_grande.jpg?v=1480018124');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (3,'http://cdn.shopify.com/s/files/1/0667/0685/products/004-1_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/004-1-3_grande.jpg?v=1479952382',
'http://cdn.shopify.com/s/files/1/0667/0685/products/004-2-2_grande.jpg?v=1479952382','http://cdn.shopify.com/s/files/1/0667/0685/products/HUT004_grande.jpg?v=1479952382',
'http://cdn.shopify.com/s/files/1/0667/0685/products/004-2_grande.jpg?v=1479952382',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-2_grande.jpg?v=1479952382');


INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (4,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-2-2_grande.jpg?v=1479952605',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-3_grande.jpg?v=1479952605',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-8_grande.jpg?v=1479952605',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_6437_grande.jpg?v=1479952605',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-3331_grande.jpg?v=1479952605',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_5cbea988-253b-44cf-adc4-2e1d5fa5f4d4_grande.JPG?v=1479952605');

INSERT INTO image (img_id, img1, img2, img3) VALUES (5,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-007_grande.jpg?v=1480124174',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-007-3_grande.jpg?v=1480124174',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS7_9584869c-534f-4036-b13a-344714f2e4bf_grande.jpg?v=1480124190');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (6,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431-7_0b9aff86-8c00-4696-959e-e7d95c667b5a_grande.jpg?v=1480103510',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431-5-2_grande.jpg?v=1480103515',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431-11-2_grande.jpg?v=1479944039',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431-16_grande.jpg?v=1479944039',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431_grande.jpg?v=1479944065',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44_1172b67d-14f3-43b3-94b9-0b8044444b79_grande.jpg?v=1479944039');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (7,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-YIN331_grande.jpg?v=1479944234',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-YIN331-2_grande.jpg?v=1479944240',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-YIN331-5_grande.jpg?v=1479944245',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5580_grande.jpg?v=1479944250',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-YIN331_67f4aa08-dada-4058-b8f3-ccdfd0147423_grande.jpg?v=1479944263',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_70e0c1f3-6947-4da8-8cda-9d53eaeb1efd_grande.JPG?v=1479944214');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (8,'http://cdn.shopify.com/s/files/1/0667/0685/products/009-1_grande.jpg?v=1479947623',
'http://cdn.shopify.com/s/files/1/0667/0685/products/009-1-2_grande.jpg?v=1479947623',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-3331-8_grande.jpg?v=1479952605',
'http://cdn.shopify.com/s/files/1/0667/0685/products/009-2_grande.jpg?v=1479947623',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT9-1-2_grande.jpg?v=1479947623',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT9-1_grande.jpg?v=1479947623');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (9,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-008-1-557_grande.jpg?v=1479946600',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-008-2-557_grande.jpg?v=1479946600',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-008-557_grande.jpg?v=1479946600',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-Box-2_grande.jpg?v=1479946600',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-557_grande.jpg?v=1479946658');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (10,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031_9e0b08ba-6fd9-46e2-8596-7805777b82bb_grande.jpg?v=1479946989',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-34_grande.jpg?v=1479946989',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-1_grande.jpg?v=1479946989',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-031_grande.jpg?v=1479946989',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-ss031_grande.jpg?v=1479946995');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (11,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3931-8-3_grande.jpg?v=1479944147',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3931-11-2_grande.jpg?v=1479944147',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3931-13-2_grande.jpg?v=1479944147',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_grande.JPG?v=1479944147',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5600_18bd131b-0c5e-4546-9331-e843e05ac07a_grande.jpg?v=1479944147',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3931_grande.jpg?v=1479944178');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (12,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-4492_grande.jpg?v=1480103246',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-4492-2_grande.jpg?v=1480103251',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A0860_grande.jpg?v=1480103261',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A0835_grande.jpg?v=1480103266',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A0963-2_88ad8114-f9f8-4e64-9551-cfe7eff04cef_grande.jpg?v=1480103271',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_5cbea988-253b-44cf-adc4-2e1d5fa5f4d4_grande.JPG?v=1479952605');


INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (13,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3331-2-2_grande.jpg?v=1480101991',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3331-3_grande.jpg?v=1480101991',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A4069_grande.jpg?v=1480101991',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F15A9893_grande.jpg?v=1480101991',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC8729_copy_399a2cb2-25ee-4fa2-8bf9-24990abc04cb_grande.jpg?v=1480101991',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3331-8_grande.jpg?v=1480101991');

INSERT INTO image (img_id, img1, img2, img3, img4) VALUES (14,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-YIN537_grande.jpg?v=1466011128',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-YIN537-2_grande.jpg?v=1466011128',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_ce37195e-8a3b-45ca-a064-25c636006ffe_grande.JPG?v=1466011128',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44_818b93b1-5f82-44e9-a6d2-6c86b406aecf_grande.jpg?v=1466011128');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (15,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3231-5_grande.jpg?v=1479944318',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3231-5-2_grande.jpg?v=1479944318',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3231-11-2_grande.jpg?v=1479944318',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3231-13-2_grande.jpg?v=1479944318',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-55_2a5132da-f8dc-41a7-91b8-46a20fdbdca4_grande.jpg?v=1479944318',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3231_grande.jpg?v=1479944357');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (16,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-0092_grande.jpg?v=1479945565',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-0092-2_grande.jpg?v=1479945565',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-0092-3_grande.jpg?v=1479945565',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-0092-4_grande.jpg?v=1479945565',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-091_grande.jpg?v=1479945608');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (17,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-031_grande.jpg?v=1479945707',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-031-4_grande.jpg?v=1479945707',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-031_b20eaf80-db70-4aa8-9798-6430fe7763cc_grande.jpg?v=1479945741',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-33_grande.jpg?v=1479945707',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-031-1_grande.jpg?v=1479945735');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (18,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-0397_grande.jpg?v=1480099212',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-0397-2_grande.jpg?v=1480099212',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-0397-3_grande.jpg?v=1480099212',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC6521_d80fbd9a-bb6d-4487-bcb6-6e9bf667fb9f_grande.jpg?v=1480099212',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC4837_copy_e6e09c09-1027-4889-9740-855789690efe_grande.jpg?v=1480099219');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (19,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-HKB531_grande.jpg?v=1479948306',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-HKB531-2_grande.jpg?v=1479948306',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-HBK931_grande.jpg?v=1479948318',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-HKB531-4_grande.jpg?v=1479948306',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-HKB531-5_grande.jpg?v=1479948306',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_4e9700e9-f595-4ae4-a883-148e35649349_grande.JPG?v=1479948314');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (20,'http://cdn.shopify.com/s/files/1/0667/0685/products/New-10_grande.jpg?v=1479946091',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-024-1_grande.jpg?v=1479946095',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-024-3_grande.jpg?v=1479946100',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT024-4_1fe30613-468c-42d7-be26-a06eb56b6ea4_grande.jpg?v=1479946105',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-024-2_grande.jpg?v=1479946110');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (21,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-035-1_grande.jpg?v=1459187361',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-035-2_grande.jpg?v=1459187361',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8641_7cd4b79b-7d5e-4852-9d4a-b7153cce6ff8_grande.jpg?v=1459187361',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-035-5_grande.jpg?v=1459187361',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-43_e312d991-3774-4a28-b5c6-3b722de56561_grande.jpg?v=1459187361',
'http://cdn.shopify.com/s/files/1/0667/0685/products/jon_hernandez17_grande.jpg?v=1459187361');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (22,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-4304-1_grande.jpg?v=1480103611',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431-11-2_d3366c4c-69e7-4370-9a13-ea33ecfe7dbd_grande.jpg?v=1480103593',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3431-16_9ab2bc1e-cdc3-417d-8f0b-ff478bcaa663_grande.jpg?v=1480103593',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A2212_grande.jpg?v=1480103622',
'http://cdn.shopify.com/s/files/1/0667/0685/products/chelsey_brooks_grande.jpg?v=1480103593',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44_108c0926-c15c-4680-8cfb-b4dfcb4a8505_grande.jpg?v=1480103593');

INSERT INTO image (img_id, img1, img2, img3, img4, img5, img6) VALUES (23,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-041-8_grande.jpg?v=1467845865',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-041-9_grande.jpg?v=1467845865',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-041-3_grande.jpg?v=1467845865',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_88fd5d0b-a2ca-4d88-826c-ce93e10c81b2_grande.jpg?v=1467845865',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A9040_grande.jpg?v=1467845865',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-041-5_grande.jpg?v=1467845865');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (24,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-025-2_grande.jpg?v=1479945910',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-025-1_grande.jpg?v=1479945972',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-024_grande.jpg?v=1479945954',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-43_grande.jpg?v=1479945910',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-025-5_grande.jpg?v=1479945910');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (25,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-6604-2-2_grande.jpg?v=1467846082',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-6604-3_grande.jpg?v=1467846082',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_12e35134-f3f3-4666-b8b7-325d1e4d2c58_grande.jpg?v=1467846082',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A6439_grande.jpg?v=1467846082',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44_807f036f-1210-4cf9-b64f-37cdb8439a53_grande.jpg?v=1467846082');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (26,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT44-3931-2_a6dbf4c0-4445-4638-adb7-1eb5837a4256_grande.jpg?v=1455861166',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-3931-13-2_eba3e4a1-6c9c-4a93-843c-b61ae6dc935a_grande.jpg?v=1455861166',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9872_84dce747-416c-4e74-9e6b-6262e07ada1c_grande.JPG?v=1455861166',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44_81fbac4f-1570-46da-81b5-d478ad039996_grande.jpg?v=1455861166',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_af8510e3-44c1-4080-81a6-a4ba76743304_grande.jpg?v=1455861166');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (27,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-4204-2_grande.jpg?v=1480102859',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-4204_grande.jpg?v=1480102864',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT3204-8_grande.jpg?v=1480102869',
'http://cdn.shopify.com/s/files/1/0667/0685/products/49d28ebf5f6eceb6340a6a4025c90522_grande.jpg?v=1480102874',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-55_b45cc32d-ab6b-4496-88d5-85d2d4dc180e_grande.jpg?v=1480102821');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (28,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-3387_copy_grande.jpg?v=1480101978',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-3387_grande.jpg?v=1480101978',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-3387-3_grande.jpg?v=1480101978',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC8729_copy_68e85e08-2aec-415b-962b-0871c1c66d67_grande.jpg?v=1480101978',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_0116_grande.jpg?v=1480101978');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (29,'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-28_grande.jpg?v=1476312131',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC_0316_grande.jpg?v=1476312131',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT021-4_grande.jpg?v=1476312131',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5599_grande.jpg?v=1476312131',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8641_97a34512-bbbc-4cd0-b112-a38e53d043fb_grande.jpg?v=1476312131');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (30,'http://cdn.shopify.com/s/files/1/0667/0685/products/005-1-3_grande.jpg?v=1479947512',
'http://cdn.shopify.com/s/files/1/0667/0685/products/005-1-2_grande.jpg?v=1479947512',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT005-3_grande.jpg?v=1479947512',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT005-5_grande.jpg?v=1479947512',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-005_grande.jpg?v=1479947535');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (31,'http://cdn.shopify.com/s/files/1/0667/0685/products/007-1_b180b21d-eb60-4833-8f32-404c91da4e67_grande.jpg?v=1480124520',
'http://cdn.shopify.com/s/files/1/0667/0685/products/007-1-2_f60437d2-af4d-4331-a29b-d493973c0c9a_grande.jpg?v=1480124529',
'http://cdn.shopify.com/s/files/1/0667/0685/products/007-2-2_b9b8bd40-af6d-4ab9-9720-5be7fb6c4a51_grande.jpg?v=1480124534',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-007_3cd053c9-62e0-4e5c-968b-40366ee5f142_grande.jpg?v=1480124540',
'http://cdn.shopify.com/s/files/1/0667/0685/products/007-2_92f75b49-5b96-4d22-ae7e-3310121dde64_grande.jpg?v=1480124546');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (32,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-SS7-1_grande.jpg?v=1480012195',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-SS7-1-2_grande.jpg?v=1480012195',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-SS7-2_grande.jpg?v=1480012195',
'hhttp://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-15-2_grande.jpg?v=1480012195',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS7_grande.jpg?v=1480012195');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (33,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-SS0092_copy_grande.jpg?v=1464905701',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-SS0092-2_grande.jpg?v=1464905701',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-35_588bd705-45e2-4e52-97cc-a6e8a346db64_grande.jpg?v=1464905701',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_d4a16014-7dab-4847-837f-32fa8dff7a5e_grande.jpg?v=1464905701',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_0153_grande.jpg?v=1464905714');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (34,'http://cdn.shopify.com/s/files/1/0667/0685/products/003-1-3_grande.jpg?v=1480098935',
'http://cdn.shopify.com/s/files/1/0667/0685/products/003-1-2_grande.jpg?v=1480098935',
'http://cdn.shopify.com/s/files/1/0667/0685/products/003-2_grande.jpg?v=1480098935',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT3-1_grande.jpg?v=1480098935',
'http://cdn.shopify.com/s/files/1/0667/0685/products/every_minute_every_day_love_s_a2375196-708d-4bbd-a1db-1b321ff13270_grande.png?v=1480098945');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (35,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS-021-11_grande.jpg?v=1458606637',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS-021-10_grande.jpg?v=1458606637',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC_0316_e99fc887-b908-4868-b637-0bb89133b6e2_grande.jpg?v=1458606637',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8641_ff151893-0979-496d-85e2-7e0b4b2a38a7_grande.jpg?v=1458606637',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS021_grande.jpg?v=1458606637');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (36,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0385_grande.jpg?v=1457558423',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0385-2_grande.jpg?v=1457558423',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-35_0a837579-e251-4824-82b8-769040756a8a_grande.jpg?v=1457558423',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_beb65fd3-105b-4290-a414-dfa69c83d423_grande.jpg?v=1457558423',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_2a21e7b2-480a-44c0-b794-8e6ab3f795c0_grande.jpg?v=1457558423');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (37,'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-34_c3d60ddc-8176-4752-8529-39a6e6b875a2_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-1_83627454-0532-4195-b884-a1175e4dd191_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-031_33dc045c-c5f2-4aaf-a0a8-a97f1876c982_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/12826160_527268380777872_1642611169_n_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-ss031_38be8dc2-105d-4b6e-9c58-c993ea815113_grande.jpg?v=1479947099');

INSERT INTO image (img_id, img1, img2, img3, img4) VALUES (38,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-SS0393_grande.jpg?v=1480125133',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-SS0393-2_grande.jpg?v=1480125138',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC8942_grande.jpg?v=1480125142',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_a99d5345-0ed0-49d5-9586-09da0a36584c_grande.jpg?v=1480125105');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (39,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-SS7_grande.jpg?v=1479948504',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-1_83627454-0532-4195-b884-a1175e4dd191_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-031_33dc045c-c5f2-4aaf-a0a8-a97f1876c982_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/12826160_527268380777872_1642611169_n_grande.jpg?v=1479947099',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-ss031_38be8dc2-105d-4b6e-9c58-c993ea815113_grande.jpg?v=1479947099');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (40,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0397_grande.jpg?v=1457554657',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0397-2_grande.jpg?v=1457554657',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-35_d7356ebb-d259-4bd6-b1b0-642ac6a707df_grande.jpg?v=1457554657',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_a322df1d-333d-42b5-ae30-d1d4546fb609_grande.jpg?v=1457554657',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_e1ca9238-fcd3-4b4f-ae1a-ccceb5a35349_grande.jpg?v=1457554657');

INSERT INTO image (img_id, img1, img2, img3, img4) VALUES (41,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS0394-5_grande.jpg?v=1458259721',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS0394-4_grande.jpg?v=1458259721',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_c860791c-5173-47bf-b7ba-bd04d847e5b7_grande.jpg?v=1458259721',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_0aafa2f9-17ee-41ce-a3c8-2544e03455e2_grande.jpg?v=1458259721');

INSERT INTO image (img_id, img1, img2, img3, img4) VALUES (42,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44-SS7_grande.jpg?v=1439331626',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44-SS7-3_grande.jpg?v=1439331626',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-35_a60086f3-660a-49a4-85fb-052c0e1e9601_grande.jpg?v=1439331626',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_05ef708a-8f20-4c7b-a4a3-3e74a29f5481_grande.jpg?v=1439331626');

INSERT INTO image (img_id, img1, img2, img3, img4) VALUES (43,'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-33_e9a59c51-2b51-4e40-9b37-eab2d7b23279_grande.jpg?v=1479947171',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-031-1_32921f33-7125-4b48-928c-d20db616f550_grande.jpg?v=1479947171',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-031-4_26fa4829-9461-43cd-8991-193ef45ad9c6_grande.jpg?v=1479947171',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-031_d4d85255-299d-45e5-93cd-8d3cb570b6e8_grande.jpg?v=1479947171');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (44,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0397-6_grande.jpg?v=1458259924',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0397-5_grande.jpg?v=1458259924',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS0397-7_grande.jpg?v=1458259924',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_a2fe5e0e-2587-4e65-9d1f-b7c4e86ecdde_grande.jpg?v=1458259924',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_baea23e8-3629-451b-ad5b-7198d463c94e_grande.jpg?v=1458259924');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (45,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS-031-10_grande.jpg?v=1480017141',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS-031-11_grande.jpg?v=1480017141',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-1_a877b229-29c4-4f03-b8c3-f241ae1882cf_grande.jpg?v=1480017141',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS031-3_grande.jpg?v=1480017141',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-031_2e8c4d70-cf95-4b03-8e77-ec467d477c28_grande.jpg?v=1480017141');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (46,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS0396_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS0396-2_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-35_334adcc2-793a-42a9-b1fd-1ef56822f5d5_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_1b009bdd-8cf5-4c8a-b1be-7d4fd909061d_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_aa3558de-795a-489c-935c-de468e95dada_grande.jpg?v=1457558722');

INSERT INTO image (img_id, img1, img2, img3, img4, img5) VALUES (47,'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS0396_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-SS0396-2_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/treehutwatches-35_334adcc2-793a-42a9-b1fd-1ef56822f5d5_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8634_1b009bdd-8cf5-4c8a-b1be-7d4fd909061d_grande.jpg?v=1457558722',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_aa3558de-795a-489c-935c-de468e95dada_grande.jpg?v=1457558722');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (48, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-034-HB-2_grande.jpg?v=1460745138',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-034-HB_grande.jpg?v=1460745143',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_82de6895-3687-4ce5-94c8-c716aa22279f_grande.jpg?v=1460745083',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5534_46ebb180-33ec-4b64-9e0e-275f70ae15db_grande.JPG?v=1460745083',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5531_77573fb5-32b2-4c9e-a656-bebe5c0f430e_grande.JPG?v=1460745083');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (49, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-LAB-2_grande.jpg?v=1460744633',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-031-LAB_grande.jpg?v=14607446333',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_07c39dd3-1a99-43a3-9c92-8795af43c9fd_grande.jpg?v=1460744633',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5534_b27d39bb-335d-4c91-bf28-87be8e30eabf_grande.JPG?v=1460744633',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5531_8c9e259e-25e0-4c83-8953-c41b2ca4877c_grande.JPG?v=1460744633');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (50, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-LVB_grande.jpg?v=1460747087',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-LVB-2_grande.jpg?v=1460747092',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_514b21ee-707e-4950-9665-b807e1a03bfc_grande.jpg?v=1460747076',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5534_9a0799d5-39f8-47e1-bc17-40e55a531184_grande.JPG?v=1460747076',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5531_ed472783-47e0-4421-942f-89bf17651b76_grande.JPG?v=1460747076');
INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (51, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-55-031-CHB-2_grande.jpg?v=1476312276',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-55-031-CHB_grande.jpg?v=1476312276',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-55-031-CHB-5_grande.jpg?v=1476312276',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5042_grande.jpg?v=1476312276',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_e39e92b4-cbd2-496e-b63b-ffb1b4c298b4_grande.jpg?v=1476312276');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (52, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-034-LAB_grande.jpg?v=1460747174',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-034-LAB-2_grande.jpg?v=1460747178',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_c44dd298-2101-44b4-b9f4-78910f2f3120_grande.jpg?v=14607471643',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5534_dc1075d6-3b23-4be1-aded-aed871e65749_grande.JPG?v=1460747164',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5531_f805abf2-05b5-4067-87ec-2956bd7c8c99_grande.JPG?v=1460747164');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (53, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT--5-3_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT--5-2_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-55-55-0062-CHB-3_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5660_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_93f77d2b-4d34-4ae5-80f8-05e7ae8cdb85_grande.jpg?v=1464905428');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (54, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-031-HB-2_grande.jpg?v=1460744772',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-031-HB_grande.jpg?v=1460744772',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_90884833-2271-44ca-a458-2e835989fefb_grande.jpg?v=1460744772',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5534_fe5ab9f6-5bee-458b-b588-092b9c2bc6e7_grande.JPG?v=1460744772',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC5531_aa8de86d-3e63-4629-913e-f076fa0767f9_grande.JPG?v=1460744772');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (55, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-0092-LVB-2_grande.jpg?v=1463096467',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-0092-LVB_grande.jpg?v=1463096467',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-0092-LVB-5_grande.jpg?v=1463096467',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5660_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_93f77d2b-4d34-4ae5-80f8-05e7ae8cdb85_grande.jpg?v=1464905428');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (56, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-021-CHB-2_grande.jpg?v=1467845768',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-021-CHB_grande.jpg?v=1467845768',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-021-CHB-5_grande.jpg?v=1467845768',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5660_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_93f77d2b-4d34-4ae5-80f8-05e7ae8cdb85_grande.jpg?v=1464905428');


INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (57, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT--11-3_grande.jpg?v=1464904972',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT--11-2_grande.jpg?v=1464904972',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5654_grande.jpg?v=1464904972',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5660_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_93f77d2b-4d34-4ae5-80f8-05e7ae8cdb85_grande.jpg?v=1464905428');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (58, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44-031-LVB-2_grande.jpg?v=1464907762',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-44-031-LVB_grande.jpg?v=1464907762',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A2580_grande.jpg?v=1464907762',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5660_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_93f77d2b-4d34-4ae5-80f8-05e7ae8cdb85_grande.jpg?v=1464905428');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (59, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-CHB-2_grande.jpg?v=1460677273',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-004-CHB_grande.jpg?v=1460677280',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_a5b26ef4-1cb3-4115-a902-3002e2475c63_grande.jpg?v=1460677262',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A5660_grande.jpg?v=1464905428',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_8637_93f77d2b-4d34-4ae5-80f8-05e7ae8cdb85_grande.jpg?v=1464905428');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (60, 'http://cdn.shopify.com/s/files/1/0667/0685/products/3_a51a50b3-1c30-4519-8151-0d0ec94dc097_grande.jpg?v=1480109149',
'http://cdn.shopify.com/s/files/1/0667/0685/products/il_570xN.730281459_7184_grande.jpg?v=1480109149',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Treehut_Couples_Watches_-12_grande.jpg?v=1480109149',
'http://cdn.shopify.com/s/files/1/0667/0685/products/007-2_c808014a-9fc4-4737-840b-6b9941852ac9_grande.jpg?v=1480109149',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC4941-2-2_ee132541-db7e-41c5-acf3-cc4c9975090d_grande.jpg?v=1480109149');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (61, 'http://cdn.shopify.com/s/files/1/0667/0685/products/5_2f0d390e-a700-4856-87a0-e8fa52ad97c7_grande.jpg?v=1480012426',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Treehut_Couples_Watches_-6_47088c3d-33c9-48c4-9cf4-179e4e303fc4_grande.jpg?v=1480012431',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT22-SS7-1-3_a238bf1b-eacb-452a-af9e-17c2047721ac_grande.jpg?v=1480012435',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT227-2_ec77b24a-0166-4102-87a3-545ece3e4b8e_grande.jpg?v=1480012440',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-SS7_a5c7fc43-fe05-4800-9560-def95de5a2bd_grande.jpg?v=1480012385');


INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (62, 'http://cdn.shopify.com/s/files/1/0667/0685/products/6_2bb38d2e-b3e4-487d-bcee-f57358eeb725_grande.jpg?v=1480108961',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-33-007-2_grande.jpg?v=1480108966',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-33-007-3_f55b0a51-0d5d-415d-8962-f6c381f88683_grande.jpg?v=1480108972',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-33-007_933b359e-9f24-4ad6-a870-a6c02fe1b23d_grande.jpg?v=1480108976',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC4941-2-2_grande.jpg?v=1480108981');


INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (63, 'http://cdn.shopify.com/s/files/1/0667/0685/products/4_grande.jpg?v=1480109238',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-007_cb59b49c-9f14-4b97-9f87-a33741174b75_grande.jpg?v=1480109249',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT11-007-1_grande.jpg?v=1480109253',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A4895_grande.jpg?v=1480109259',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-11-007_f1c54918-864a-40f5-9a9e-f8af4b72da96_grande.jpg?v=1480109243');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (64, 'http://cdn.shopify.com/s/files/1/0667/0685/products/1_638cd9d0-b50b-427f-81bd-a9c39a98d9c0_grande.jpg?v=1480098723',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A4861_grande.jpg?v=1480098733',
'http://cdn.shopify.com/s/files/1/0667/0685/products/003-2_0d20fc07-149a-4e3f-b4ef-fe40a14406c1_grande.jpg?v=1480098737',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A4839_grande.jpg?v=1480098742',
'http://cdn.shopify.com/s/files/1/0667/0685/products/every_minute_every_day_love_s_grande.png?v=1480098747');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (65, 'http://cdn.shopify.com/s/files/1/0667/0685/products/2_6c8d756e-e399-4a25-b3e3-889a20113686_grande.jpg?v=1480110400',
'http://cdn.shopify.com/s/files/1/0667/0685/products/13102455_1689240901325345_531929902_n_grande.jpg?v=1480110404',
'http://cdn.shopify.com/s/files/1/0667/0685/products/unnamed_grande.jpg?v=1480110409',
'http://cdn.shopify.com/s/files/1/0667/0685/products/DSC4941-2-2_bda3af8a-e07f-4252-913e-bd9e50dc22eb_grande.jpg?v=1480110413',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_a96fa8ef-bbd6-4ddc-9615-436e68b2d6ed_grande.jpg?v=1480110387');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (66, 'http://cdn.shopify.com/s/files/1/0667/0685/products/make_a_pair_please_2_grande.jpg?v=1480110273',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-16-2_grande.jpg?v=1480110279',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_0367_24fd5566-5174-42d1-9a97-43ec39aceae6_grande.jpg?v=1480110283',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_2849-2-2_grande.jpg?v=1480110287',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_eab559dd-8662-4890-8541-00863412bafc_grande.jpg?v=1480110262');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (67, 'http://cdn.shopify.com/s/files/1/0667/0685/products/Second_hand_black_please_copy_2_321e1c12-f77c-4d2e-8b60-4f886be9ea44_grande.jpg?v=1480110327',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-12-2_grande.jpg?v=1480110332',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-031_grande.jpg?v=1480110337',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_57bd7619-534c-4cff-ab2e-62a7e367eaa7_grande.jpg?v=1480109375');

INSERT INTO image (img_id, img1, img2, img3, img4, img5)
VALUES (68, 'http://cdn.shopify.com/s/files/1/0667/0685/products/Second_hand_black_please_grande.jpg?v=1479947264',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Treehut_Couples_Watches_-5_grande.jpg?v=1479947212',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Treehut_Couples_Watches_-1_grande.jpg?v=1479947212',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-22-ss031_9e11d1f6-0fdd-49be-bd5e-7346fd9f61ef_grande.jpg?v=1479947269',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-BOX_373ab1ed-ed6e-4c89-b378-65fe07491b5b_grande.jpg?v=1480109362');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (69, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C3-1_grande.jpg?v=1437518080',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C3-2-2_grande.jpg?v=1437518085',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C2-3_grande.jpg?v=1437518091',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_5d9faa5a-eef7-44e7-8aff-674fa181c4f1_grande.jpg?v=1462571475');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (70, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W2-1_grande.jpg?v=1437519278',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W2-2-2_grande.jpg?v=1437519282',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W2-3_grande.jpg?v=1437519285',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_42d14772-fa0d-4302-bf6d-6b842a2d7a5c_grande.jpg?v=1462571902');


INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (71, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A3-2_grande.jpg?v=1437515683',
'http://cdn.shopify.com/s/files/1/0667/0685/products/TREEHUT5-22_grande.jpg?v=1437515686',
'http://cdn.shopify.com/s/files/1/0667/0685/products/TREEHUT5-27_grande.jpg?v=1437515696',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Aviator_7e9292af-c30d-419a-af7d-a962dcb56f80_grande.jpg?v=1462571338');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (72, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C1-1_grande.jpg?v=1437517983',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C1-2_grande.jpg?v=1437517987',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C1-3_826e412e-1e98-42de-bbfb-c579e927d15a_grande.jpg?v=1437517990',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_grande.jpg?v=1462571462');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (73, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A1-2_grande.jpg?v=1446752524',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A1-3_grande.jpg?v=1446752524',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A1-1_grande.jpg?v=1446752524',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Aviator_ef8d6fde-a558-46d7-8cb7-60fddb9bc0a0_grande.jpg?v=1462571358');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (74, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C6-1_copy_grande.jpg?v=1437518333',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C6-2_copy_grande.jpg?v=1437518337',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C1-3_0b7f570f-18e2-4035-b742-a8693c4f235e_grande.jpg?v=1437518341',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_473ff7a7-46cb-45c0-9cd3-9d43575d3b92_grande.jpg?v=1462571481');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (75, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C5-1_grande.jpg?v=1459187270',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C5-2_grande.jpg?v=1459187270',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C5-3_grande.jpg?v=1459187270',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_b9c80c1d-40e5-4cba-a0e3-c25208ee1140_grande.jpg?v=1462571471');


INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (76, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A4-2_grande.jpg?v=1437517160',
'http://cdn.shopify.com/s/files/1/0667/0685/products/TREEHUT5-21_grande.jpg?v=1437517166',
'http://cdn.shopify.com/s/files/1/0667/0685/products/TREEHUT5-29_grande.jpg?v=1437517174',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Aviator_f0523f26-c363-4e5a-9eed-44296fd792cd_grande.jpg?v=1462571350');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (77, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H1-2_grande.jpg?v=1437518405',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H1-0_grande.jpg?v=1437518409',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Hendry_d2bcc8a1-b5fc-40a7-b4e4-33d1c68a3ecd_grande.jpg?v=1462571586');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (78, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H3-2_grande.jpg?v=1462571601',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H3-1_grande.jpg?v=1462571601',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Hendry_5243d583-a963-46b1-b8d9-a6d231d5d169_grande.jpg?v=1462571601',
'http://cdn.shopify.com/s/files/1/0667/0685/products/icm_fullxfull.60002450_6jnl893dqcwskcs04os0_grande.jpg?v=1462571601');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (79, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W11-5-2_grande.jpg?v=1459187263',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_0639-2_grande.jpg?v=1459187263',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_cb850e0a-6eb3-417c-b43d-029e4821ba21_grande.jpg?v=1462571789');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (80, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E1-5-2_grande.jpg?v=1459187258',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E1-4-2_grande.jpg?v=1459187258',
'http://cdn.shopify.com/s/files/1/0667/0685/products/E_Sunglasses_7de566cf-ff78-4244-a8aa-965d454b64d7_grande.jpg?v=1462571974');


INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (81, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W1-1_grande.jpg?v=1437519189',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W1-2-2_grande.jpg?v=1437519193',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W1-3_grande.jpg?v=1437519200',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_ae5959c4-df73-4613-aea4-89516b754b92_grande.jpg?v=1462571899');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (82, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E2-5-2_grande.jpg?v=1446777220',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E2-4-2_grande.jpg?v=1446777220',
'http://cdn.shopify.com/s/files/1/0667/0685/products/E_Sunglasses_cbc046e7-8adc-47fd-bfca-428238851bb3_grande.jpg?v=1462571972');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (83, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H4-2_grande.jpg?v=1459893475',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H4-0_grande.jpg?v=1459893475',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Hendry_079de189-6217-4485-b296-a2ecd4433611_grande.jpg?v=1462571631');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (84, 'http://cdn.shopify.com/s/files/1/0667/0685/products/W4-BLUE_grande.jpg?v=1437519463',
'http://cdn.shopify.com/s/files/1/0667/0685/products/W4-_blue-2_grande.jpg?v=1437519468',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_be3a35bd-41af-4be4-be60-1f8c05a36ceb_grande.jpg?v=1462571896');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (85, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W3-1_grande.jpg?v=1437519357',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W3-2-2_grande.jpg?v=1437519366',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W3-3_grande.jpg?v=1437519370',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_6ae80c9d-33fe-40ed-8468-1a170042ab37_grande.jpg?v=1462571893');


INSERT INTO image (img_id, img1, img2, img3)
VALUES (86, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E0-5-2_grande.jpg?v=1446777316',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E0-4-2_grande.jpg?v=1446777317',
'http://cdn.shopify.com/s/files/1/0667/0685/products/E_Sunglasses_8a7a6255-8efb-4c93-832d-5801c1abd022_grande.jpg?v=1462571964');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (87, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT_W8-1-1-2_grande.jpg?v=1469487661',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W8_grande.jpg?v=1469487661',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_6934120a-b776-4917-9526-9a6e405848ad_grande.jpg?v=1469487661');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (88, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A2-2_grande.jpg?v=1437515323',
'http://cdn.shopify.com/s/files/1/0667/0685/products/IMG_9111_grande.jpg?v=1437515327',
'http://cdn.shopify.com/s/files/1/0667/0685/products/TREEHUT5-26_grande.jpg?v=1437515338',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Aviator_grande.jpg?v=1462571300');


INSERT INTO image (img_id, img1, img2, img3)
VALUES (89, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A-Gold_orange_lenses_copy_grande.jpg?v=1437517210',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-A-Gold_orange_lenses_grande.jpg?v=1437517213',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Aviator_142a13ae-330c-42bb-bbd8-cafd929613d0_grande.jpg?v=1462571353');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (90, 'http://cdn.shopify.com/s/files/1/0667/0685/products/W5-orange_copy_grande.jpg?v=1437519570',
'http://cdn.shopify.com/s/files/1/0667/0685/products/W5-_oranage-2_copy_grande.jpg?v=1437519573',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_e280e9d1-7f14-46c7-bf16-48dd2fdb1b21_grande.jpg?v=1462571892');


INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (91, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C3-1_copy_grande.jpg?v=1462571457',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C3-0_copy_grande.jpg?v=1462571457',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C1-3_grande.jpg?v=1462571457',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_20e1e28f-bc29-480b-9b2b-85f61f358eae_grande.jpg?v=1462571473');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (92, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E4-5-2_grande.jpg?v=1446777326',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E4-4-2_grande.jpg?v=1446777327',
'http://cdn.shopify.com/s/files/1/0667/0685/products/E_Sunglasses_grande.jpg?v=1462571961');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (93, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H2-2_grande.jpg?v=1437518471',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-H2-0_grande.jpg?v=1437518476',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Hendry_grande.jpg?v=1462571545');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (94, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E5-5-2_grande.jpg?v=1446777288',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-E5-4-2_grande.jpg?v=1446777288',
'http://cdn.shopify.com/s/files/1/0667/0685/products/E_Sunglasses_74b96727-e965-4f2a-8559-cc967a8fef4c_grande.jpg?v=1462571967');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (95, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W13-5-2_grande.jpg?v=1446775089',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W13-6_grande.jpg?v=1446775138',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_cf6fed26-ed63-448f-85f8-4e64dbf7c802_grande.jpg?v=1462571863');


INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (96, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W12-4-2_grande.jpg?v=1462571838',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W12-5_grande.jpg?v=1462571838',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_774a0634-963f-4d30-8a2b-e0d79701f1f4_grande.jpg?v=1462571838',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Screen_Shot_2016-03-20_at_12_grande.jpg?v=1462571838');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (97, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C5-1_0f2b7b4e-5e88-4297-99e3-2d5e58a3b1fb_grande.jpg?v=1464822080',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C5-2_7bff5753-c5d1-401f-af0d-5319ccaa5269_grande.jpg?v=1464822080',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_ea8c6fb0-aa98-42f1-be59-045f766784e5_grande.jpg?v=1464822080');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (98, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W15-4-2_grande.jpg?v=1446777148',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W15-5_grande.jpg?v=1446777148',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_a97fb93b-cfd1-4d7c-9c65-7e7e98549807_grande.jpg?v=1462571867');

INSERT INTO image (img_id, img1, img2, img3, img4)
VALUES (99, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W14-4-2_a2b6f131-80dc-4a18-8955-adac25643642_grande.jpg?v=1446776701',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W14-5_5fc34421-43e2-485d-94cd-70c0f36239c0_grande.jpg?v=1446776755',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_ba80ec9a-e0d7-46b3-8af1-4a32f5d9136f_grande.jpg?v=1462571861',
'http://cdn.shopify.com/s/files/1/0667/0685/products/0F5A8827_grande.jpg?v=1467846119');

INSERT INTO image (img_id, img1, img2, img3)
VALUES (100, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C0-SILVER_MIRROR_grande.jpg?v=1426694760',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-C0-SILVER_MIRROR-2_grande.jpg?v=1426694769',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_1cf9dc96-5beb-404b-9abf-2d86ee394c24_grande.jpg?v=1462571468');


INSERT INTO image (img_id, img1, img2, img3)
VALUES (101, 'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W16-5-2_grande.jpg?v=1446777078',
'http://cdn.shopify.com/s/files/1/0667/0685/products/HUT-W16-6_grande.jpg?v=1446777078',
'http://cdn.shopify.com/s/files/1/0667/0685/products/Clubmaster_Wafar_Rina_fa8fa09a-1d2d-490b-ad1b-ee83e5768e20_grande.jpg?v=1462571893');

/* INSERT PRODUCTS*/

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // BOYD', 59, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
74, '• Watch made from Real Wood • Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // THEO', 69, 'The Ebony wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
74, '• Watch made from Real Wood • Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // NOVA', 65, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
80, '• Watch made from Real Wood • Japanese Quartz movement
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

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // BOYD BLUE', 79, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    94, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('ALL WOOD WATCH // ZEBRAWOOD + EBONY 31', 74, 'The all ebony wooden watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Strap and case are made of 100% ebony.', 'WATCH',
89, '• Handmade in San Francisco, USA
• Ship Next Business Day with rush engraving option!
• Watch and Watch Band Made from Real Wood
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Minimalist Design
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('STAINLESS STEEL WOOD WATCH // SILVER EBONY THEO', 134, 'Every Treehut watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Complementing casual, formal or business wear, this timepiece features a stainless steel bracelet and caseback highlighted with real wood inlays for a sleek and modern addition to your wardrobe.', 'WATCH',
149, '• Handmade in San Francisco, USA
• Ship Next Business Day with rush engraving option!
• Watch and Watch Band Made from Real Wood
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Minimalist Design
• Durable & Long Lasting', '1.7 Inches');
INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // FRANK', 79, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    84, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // CHOCOLATE WALNUT', 69, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    84, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // THEO BLUE', 69, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    84, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // EBONY + WALNUT 31', 105, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    130, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');


INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // ALL EBONY THEO', 95, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    110, '• Ship Next Business Day with rush engraving option!
• Watch Band Made from Real Wood and Stainless Steel
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Men watch bands can be sized at a watchsmith to fit 7-inch to 8.75-inch wrists.
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('STAINLESS STEEL // SILVER CHASE', 150, 'Every Treehut watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Complementing casual, formal or business wear, this timepiece features a stainless steel bracelet and caseback highlighted with real walnut wood inlays for a sleek and modern addition to your wardrobe. ', 'WATCH',
    84, '• Ship Next Business Day with rush engraving option!
• Watch Band Made from Real Wood and Stainless Steel
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Mens watch bands can be sized at a watchsmith to fit 7-inch to 8.75-inch wrists.
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // REDWOOD', 95, 'Every Treehut watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Complementing casual, formal or business wear, this timepiece features a stainless steel bracelet and caseback highlighted with real walnut wood inlays for a sleek and modern addition to your wardrobe. ', 'WATCH',
    110, '• Ship Next Business Day with rush engraving option!
• Watch Band Made from Real Wood and Stainless Steel
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Mens watch bands can be sized at a watchsmith to fit 7-inch to 8.75-inch wrists.
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // OLIVE ASH RED', 89, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    104, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // THEO RED', 69, 'Every Treehut watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Complementing casual, formal or business wear, this timepiece features a stainless steel bracelet and caseback highlighted with real walnut wood inlays for a sleek and modern addition to your wardrobe. ','WATCH',
    84, '• Ship Next Business Day with rush engraving option!
• Watch Band Made from Real Wood and Stainless Steel
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Mens watch bands can be sized at a watchsmith to fit 7-inch to 8.75-inch wrists.
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('EBONY WATCH // WALNUT BURL', 99, 'Every Treehut watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Complementing casual, formal or business wear, this timepiece features a stainless steel bracelet and caseback highlighted with real walnut wood inlays for a sleek and modern addition to your wardrobe. ', 'WATCH',
    114, '• Ship Next Business Day with rush engraving option!
• Watch Band Made from Real Wood and Stainless Steel
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Mens watch bands can be sized at a watchsmith to fit 7-inch to 8.75-inch wrists.
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('STAINLESS STEEL // BLACK ARTHUR', 150, 'Every Treehut watch is equipped with high quality Japan quartz movement and stainless steel tri-fold clasp with push buttons. Diameter of the dial 1.7 inches. Complementing casual, formal or business wear, this timepiece features a stainless steel bracelet and caseback highlighted with real walnut wood inlays for a sleek and modern addition to your wardrobe. ', 'WATCH',
    165, '• Ship Next Business Day with rush engraving option!
• Watch Band Made from Real Wood and Stainless Steel
• Japanese Quartz Movement
• Clasp Made from Stainless Steel Tri-Fold with Push Buttons
• Mens watch bands can be sized at a watchsmith to fit 7-inch to 8.75-inch wrists.
• Durable & Long Lasting', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // ROSEWOOD 24', 89, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    104, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // EBONY 35', 89, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    104, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // ZEBRA', 99, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    114, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // ZEBRA 41', 79, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    94, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // ROSEWOOD 35', 89, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    104, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // ALL BAMBOO NOVA', 105, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    120, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // REDWOOD', 95, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    110, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('ALL WOOD WATCH // MAPLE BURL', 99, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    114, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // ROUGE', 79, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    94, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // THEO GREEN', 79, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.7 inches. Strap is made of genuine leather.', 'WATCH',
    94, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.7 Inches');
INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // CLASSIC', 99, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather.', 'WATCH', 114, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• 3 ATM Water Resistant
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // BOYD SMALL', 103, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather.', 'WATCH', 118, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather for your everyday wear
• Minimalist Design
• 3 ATM Water Resistant
• Durable & Long Lasting
• Next business day shipping if no engraving services needed.', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // OLIVE ASH RED SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // MOD SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // ROUGE SMALL', 103, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 118, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // PURPLE HEART SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // THEO BLUE SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // AMERICAN BLACK WALNUT', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // BOYD SMALL RED', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // WALNUT BURL SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('EBONY WOODEN WATCH // BLACK WALNUT SMALL', 113, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 128, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // BOYD SMALL GREEN', 103, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 118, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // THEO RED SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('EBONY WOODEN WATCH // WALNUT BURL SMALL', 113, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 118, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('EBONY WOODEN WATCH // BLACK WALNUT SMALL', 113, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 128, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // THEO SMALL', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN WATCH // WALNUT BURL PLAIN', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial 1.3 inches. Strap is made of genuine leather. Face of the watch is made from Olive Ash.', 'WATCH', 131, '• Perfect for Smaller Wrists
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from Genuine Leather
• High Quality Soft Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping if No Engraving Services Needed', '1.3 Inches');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // TUSCANY VINTAGE BLACK', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // THEO DENIM BLUE', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // NOVA KHAKI GREEN', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // THEO RUSTIC AMBER', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // NOVA DENIM BLUE', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // MINA RUSTIC AMBER', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // THEO VINTAGE BLACK', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // LAKESIDE KHAKI GREEN', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // BALI FIRE RUSTIC', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // NAVY DENIM BLUE', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // THEO KHAKI GREEN', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES('WOODEN WATCH // NOVA RUSTIC AMBER', 116, 'The bamboo wooden watch is equipped with high quality Japan quartz movement. Diameter of the dial is 1.7 inches. The canvas strap band is made from high quality military grade canvas in vintage black with Italian genuine leather lining highlighted with hand stitchings.', 'WATCH', 131, '• Handmade in San Francisco, USA
• Watch Made from Real Wood
• Japanese Quartz Movement
• Strap Made from High Quality Canvas Band
• Lined with Italian Genuine Leather for Your Everyday Wear
• Minimalist Design
• Durable & Long Lasting
• Next Business Day Shipping Including Engraving', 'CANVAS');
INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // BOYD', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // BOYD BLUE', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // BOYD GOLD', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // BOYD RED', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // MOD', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // NOVA', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // ROUGE', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // THEO', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('COUPLES WOODEN WATCHES // THEO BLUE', 153, 'This pair of two bamboo wooden watches is equipped with high quality Japan quartz movement. Diameter of the dials is 1.7 inches and 1.3 inches. Strap is made of genuine leather.', 'WATCH', 188, '• Watch made from Real Wood
• Japanese Quartz movement
• Strap made from genuine leather
• High Quality Soft Genuine Leather Band for your everyday wear
• Minimalist Design
• Durable & Long Lasting
• Next business day shipping with rush engraving option!', 'COUPLE');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 72', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WAFAR 62', 38, 'The bamboo wooden temple frames gives these unisex sunglasses a sleek and stylish design. Minimalist black color.', 'SUNGLASS', 53, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // AVIATOR 43', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 71', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // AVIATOR 51', 38, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 53, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 76', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 75', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // AVIATOR 44', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // HENDRY 41', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // HENDRY 43', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 11', 38, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 53, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // TOG GUN 51', 38, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 53, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 61', 46, 'The bamboo wooden temple frames gives these unisex sunglasses a sleek and stylish design. Minimalist white color.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // TOP GUN 52', 51, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 66, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // HENDRY 44', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 64', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 63', 38, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 53, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // TOP GUN 50', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 68', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // AVIATOR 42', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // AVIATOR 45', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 65', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 73', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // TOP GUN 54', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // HENDRY 42', 36, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 51, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // TOP GUN 55', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 13', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WARFAR 12', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 78', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WAFAR 15', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WAFAR 14', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // CLUBMASTER 70', 42, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 57, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');

INSERT INTO products (product_name, product_price, product_desc, product_type, engraving_price, product_ul, product_category)
VALUES ('WOODEN SUNGLASSES // WAFAR 16', 46, 'The bamboo wooden temple frames ensembles these unisex sunglasses a sleek and stylish design.', 'SUNGLASS', 61, '• High quality lenses with 400 UV protection
• Size 60-13-145mm
• Temples made from real wood
• Each pair is unique with its nature wooden grain
• Next business day shipping', 'MEN');
