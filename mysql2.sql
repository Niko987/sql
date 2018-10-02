SELECT s.params["ev"] as eventtype
,s.params["lpos"] as lpos
,s.params["lid"] as lid
,s.params["linktext"] as linktext
,s.params["link"] as link
,count(s.key) `events`
from mktg_web.web_data_uri_sessionized s
where s.viewdate between @Start Date@ and @End Date@
and s.calltype="ev"
and s.params["lpos"] like 'ff_%'
group by
s.params["ev"],s.params["lpos"],s.params["lid"],s.params["linktext"],s.params["link"]
order by
`events`  desc