SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;
 -- Total cost: startup: 37.15, total cost: 37.16
 -- Planning: 0.104 ms
 -- Execution: 0.101 ms

SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;
 -- Total Cost: startup: 36.65, total cost: 36.15
 -- Planning: 0.102 ms
 -- Execution 0.104 ms

