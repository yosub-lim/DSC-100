SELECT DISTINCT i.CustomerId
FROM invoices i
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN tracks t ON ii.TrackId = t.TrackId
JOIN genres g ON t.GenreId = g.GenreId
WHERE g.Name = 'Blues';