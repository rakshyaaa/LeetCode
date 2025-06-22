select distinct a.account_id
from logInfo a, logInfo b
where a.account_id = b.account_id
and a.ip_address != b.ip_address
and a.login <= b.logout
and a.logout >= b.login;