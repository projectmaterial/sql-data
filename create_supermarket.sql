CREATE TABLE "country" (
	"country_code"	TEXT NOT NULL UNIQUE,
	"country_name"	TEXT,
	PRIMARY KEY("country_code")
);

CREATE TABLE "product" (
	"product_id"	INTEGER NOT NULL UNIQUE,
	"country_code"	TEXT,
	"product_name"	TEXT,
	PRIMARY KEY("product_id"),
	FOREIGN KEY("country_code") REFERENCES "country"("country_code")
);

CREATE TABLE price (
	product_id NOT NULL UNIQUE PRIMARY KEY,
	price INTEGER NOT NULL,
	FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO country VALUES ('AU', 'Australia');
INSERT INTO country VALUES ('CN', 'China');
INSERT INTO country VALUES ('US', 'USA');
INSERT INTO country VALUES ('CH', 'Switzerland');

INSERT INTO product VALUES (1, 'AU', 'Lamingtons');
INSERT INTO product VALUES (2, 'CH', 'Chocolate');
INSERT INTO product VALUES (3, 'CN', 'Chow mein');
INSERT INTO product VALUES (4, 'CH', 'Rosti');
INSERT INTO product VALUES (5, 'CH', 'Raclette');

INSERT INTO price VALUES (1, 2);
INSERT INTO price VALUES (2, 7);
INSERT INTO price VALUES (3, 4);
INSERT INTO price VALUES (4, 5);
INSERT INTO price VALUES (5, 6);
