SELECT name FROM bidders
WHERE EXISTS
(SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

--
-- Further Exploration
SELECT bidders.name FROM bidders
JOIN bids
ON bidders.id = bids.bidder_id
GROUP BY bidders.name;
