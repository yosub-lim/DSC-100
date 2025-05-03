select InvoiceId, Total
from invoices
where BillingCountry IN ('USA', 'Canada')
order by InvoiceId desc;