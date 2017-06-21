UPDATE products SET imagepath='iPod-Shuffle.png' WHERE prodid%6 = 0;
UPDATE products SET imagepath='Apple-TV.png' WHERE prodid%6 = 1;
UPDATE products SET imagepath='iMac.png' WHERE prodid%6 = 2;
UPDATE products SET imagepath='iPhone.png' WHERE prodid%6 = 3;
UPDATE products SET imagepath='iPod.png' WHERE prodid%6 = 4;
UPDATE products SET imagepath='iPod-Nano.png' WHERE prodid%6 = 5;
