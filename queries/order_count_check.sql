-- Case #2: The Inflated Orders Report
-- Question: how many orders do we really have?

-- 1) What the intern counted (one row per receipt LINE)
SELECT COUNT(*) FROM order_items;
-- Result: 9657

-- 2) Real orders (one row per order)
SELECT COUNT(*) FROM orders;
-- Result: 3424

-- 3) Double-check: count each order_id only once
SELECT COUNT(DISTINCT order_id) FROM order_items;
-- Result: 3424

-- Takeaway: the intern's card overcounted by 6,233 orders (about 35x too high), because it counted receipt lines, not orders.
