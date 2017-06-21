-- generated from erdplus.com

CREATE TABLE customers
(
  custid INT NOT NULL,
  username VARCHAR(30) NOT NULL,
  firstname VARCHAR(50) NOT NULL,
  lastname VARCHAR(50) NOT NULL,
  PRIMARY KEY (custid),
  UNIQUE (username)
);

CREATE TABLE categories
(
  categoryid INT NOT NULL,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (categoryid),
  UNIQUE (name)
);

CREATE TABLE products
(
  prodid INT NOT NULL,
  categoryid INT NOT NULL,
  name VARCHAR(98) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  price NUMERIC(10,2) NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  imagepath VARCHAR(200),
  PRIMARY KEY (prodid),
  FOREIGN KEY (categoryid) REFERENCES categories(categoryid),
  UNIQUE (categoryid,name)
);

CREATE TABLE orders
(
  orderid INT NOT NULL,
  custid INT NOT NULL,
  prodid INT NOT NULL,
  quantity INT NOT NULL,
  timestamp DATE NOT NULL,
  FOREIGN KEY (prodid) REFERENCES products(prodid),
  FOREIGN KEY (custid) REFERENCES customers(custid)
);
