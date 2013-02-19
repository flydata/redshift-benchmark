select
  ac.ad_campaign_id as ad_campaign_id,
  adv.advertiser_id as advertiser_id,
  cs.spending as spending,
  ims.imp_total as imp_total,
  cs.click_total as click_total,
  (1.0*click_total)/imp_total as CTR,
  spending/click_total as CPC,
  spending/(imp_total/1000) as CPM
from
  ad_campaigns ac
join
  advertisers adv on (ac.advertiser_id = adv.advertiser_id)
join
(
  select
    il.ad_campaign_id,
    count(*) as imp_total
  from
    imp_logs il
  group by
    il.ad_campaign_id
) ims on (ims.ad_campaign_id = ac.ad_campaign_id)
join
(
  select
    cl.ad_campaign_id,
    sum(cl.bid_price) as spending,
    count(*) as click_total
  from
    click_logs cl
  group by
    cl.ad_campaign_id
) cs on (cs.ad_campaign_id = ac.ad_campaign_id);
