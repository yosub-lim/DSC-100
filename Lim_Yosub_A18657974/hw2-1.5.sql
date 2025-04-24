select CustomerId, sum(Total)
from invoices
group by CustomerId;