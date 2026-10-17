# GSL Ops Analytics

Analysis of Garden State Logistics, a fictional North Jersey distribution company (Jul 2025 – Sep 2026, 8 tables, ~17,000 rows).

## Business questions
- Which carrier is causing late deliveries?
- Are our order counts and KPIs being measured correctly?
- Where is the data messy, and how does that break reports?

## Findings so far
- **Turnpike Freight is late 33.8% of the time**, vs. about 7.6–8.6% for the other three carriers.
- An orders report showed **9,657 orders**, but the real count is **3,424**. It was counting order line items instead of orders (a grain problem).
-  The most expensive shipment in April 2026 cost $78.56 (carrier: GSL Fleet).

## Tools
- SQL (SQLite, DB Browser for SQLite)
- Python (Google Colab)

*Data is fictional and generated for practice.*
