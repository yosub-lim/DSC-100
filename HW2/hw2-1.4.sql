select BillingCountry, count(*)
from invoices
group by BillingCountry
order by BillingCountry;