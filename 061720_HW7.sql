
CREATE TABLE transaction (
	transaction_id SERIAL PRIMARY KEY,
	date TIMESTAMP, 
	trans_amt FLOAT, 
	card_num VARCHAR(20), 
	merchant_id BIGINT
);

CREATE TABLE card_holder (
    card_holder_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255)
);

CREATE TABLE merchant (
    merchant_id SERIAL PRIMARY KEY,
    merchant_name VARCHAR(255),
    category_type VARCHAR(255)
);

CREATE TABLE merchant_category (
    merchant_categ_id SERIAL PRIMARY KEY,
    category_type VARCHAR(255)
);

CREATE TABLE credit_card(
    card_num VARCHAR(20) PRIMARY KEY,
    card_holder_id BIGINT
);

CREATE TABLE transby_card( AS
						  SELECT transaction.transaction_id,
						  transaction.trans_amt,
						  transaction.date,
						  transaction.card_num,
						  credit_card.card_holder_id
						  FROM transaction
						  INNER JOIN credit_card ON tranaction.card_num = credit_card.card_num
);


SELECT *
FROM transaction
















