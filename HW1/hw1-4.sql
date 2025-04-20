-- Comma-separated values
.mode csv
.headers on
SELECT * FROM Albums;

-- List format with | separator
.mode list
.separator |
.headers on
SELECT * FROM Albums;

-- Column format with fixed widths
.mode column
.width 15 20 15 10
.headers on
SELECT * FROM Albums;