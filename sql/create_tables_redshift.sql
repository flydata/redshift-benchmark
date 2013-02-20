create table ad_campaigns (
	ad_campaign_id integer not null distkey,
	advertiser_id integer,
	attr1 varchar(255),
	attr2 varchar(255),
	attr3 varchar(255),
	attr4 varchar(255)
);
create table publishers (
	publisher_id integer not null distkey,
	attr1 varchar(255),
	attr2 varchar(255),
	attr3 varchar(255),
	attr4 varchar(255)
);
create table advertisers (
	advertiser_id integer not null distkey,
	attr1 varchar(255),
	attr2 varchar(255),
	attr3 varchar(255),
	attr4 varchar(255)
);
create table imp_logs (
	date datetime not null sortkey,
	publisher_id integer distkey,
	ad_campaign_id integer,
	country varchar(30),
	attr1 varchar(255),
	attr2 varchar(255),
	attr3 varchar(255),
	attr4 varchar(255)
);
create table click_logs (
	date datetime not null sortkey,
	publisher_id integer distkey,
	ad_campaign_id integer,
	bid_price real,
	country varchar(30),
	attr1 varchar(255),
	attr2 varchar(255),
	attr3 varchar(255),
	attr4 varchar(255)
);
