CREATE EXTERNAL TABLE IF NOT EXISTS ad_campaigns (
	ad_campaign_id INT,
	advertiser_id INT,
	attr1 STRING,
	attr2 STRING,
	attr3 STRING,
	attr4 STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '9'
STORED AS TEXTFILE
LOCATION 's3n://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/ad_campaigns';

CREATE EXTERNAL TABLE IF NOT EXISTS advertisers (
	advertiser_id INT,
	attr1 STRING,
	attr2 STRING,
	attr3 STRING,
	attr4 STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '9'
STORED AS TEXTFILE
LOCATION 's3n://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/advertisers';

CREATE EXTERNAL TABLE IF NOT EXISTS publishers (
	  publisher_id INT,
	  attr1 STRING,
	  attr2 STRING,
	  attr3 STRING,
	  attr4 STRING
	)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '9'
STORED AS TEXTFILE
LOCATION 's3n://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/publishers';

CREATE EXTERNAL TABLE IF NOT EXISTS imp_logs (
	`date` STRING,
	publisher_id INT,
	ad_campaign_id INT,
	country STRING,
	attr1 STRING,
	atte2 STRING,
	attr3 STRING,
	attr4 STRING
)
PARTITIONED BY (year STRING, month STRING, day STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '9'
STORED AS TEXTFILE
LOCATION 's3n://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/imp_logs';

ALTER TABLE imp_logs RECOVER PARTITIONS;

CREATE EXTERNAL TABLE IF NOT EXISTS click_logs (
	`date` STRING,
	publisher_id INT,
	ad_campaign_id INT,
	bid_price DOUBLE,
	country STRING,
	attr1 STRING,
	attr2 STRING,
	attr3 STRING,
	attr4 STRING
)
PARTITIONED BY (year STRING, month STRING, day STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '9'
STORED AS TEXTFILE
LOCATION 's3n://hapyrus-examples/redshift-benchmark/ad-network-examples/case-01/click_logs';

ALTER TABLE click_logs RECOVER PARTITIONS;
