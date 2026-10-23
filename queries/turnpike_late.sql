-- Case #1: The Turnpike Problem
-- Question: how often is Turnpike Freight late?

-- 1) All Turnpike Freight shipments
SELECT COUNT(*)
FROM shipments
WHERE carrier = 'Turnpike Freight';
-- Result: 838

-- 2) Late ones (delivered after the promised date)
SELECT COUNT(*)
FROM shipments
WHERE carrier = 'Turnpike Freight'
  AND delivered_date > promised_date;
-- Result: 283  →  283 ÷ 838 × 100 = 33.8% late

-- 3) Benchmark: GSL Fleet (our own trucks)
SELECT COUNT(*)
FROM shipments
WHERE carrier = 'GSL Fleet';
-- Result: 1453

SELECT COUNT(*)
FROM shipments
WHERE carrier = 'GSL Fleet'
  AND delivered_date > promised_date;
-- Result: 113  →  113 ÷ 1453 × 100 = 7.8% late

-- Takeaway: Turnpike Freight is late 4.3x as often as our own trucks.
