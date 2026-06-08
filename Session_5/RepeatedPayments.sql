SELECT COUNT(*)
FROM transactions t1 JOIN transactions t2
on t1.transaction_id < t2.transaction_id
and t1.merchant_id = t2.merchant_id
and t1.credit_card_id = t2.credit_card_id
and t1.amount = t2.amount
and EXTRACT(EPOCH FROM t2.transaction_timestamp - t1.transaction_timestamp)/60 <= 10;