create database fsdsba;

create table fsdsba.company (
     company_code char(6) not null,
	 company_name varchar(200),
	 turnover DECIMAL(11,2),
	 CEO varchar(50),
	 directors varchar(50),
	 stock_exchanges_ID varchar(6),
	 sector_name varchar(200),
	 brief varchar(2000),
	 status varchar(10),
	 primary key (company_code)
);

create table fsdsba.stockprice (
     company_code char(6) not null,
	 stock_exchanges_ID varchar(6),
	 price DECIMAL(11,2),
	 date date ,
	 time time
);


create table fsdsba.IPOdetails  (
     IPO_id integer NOT NULL AUTO_INCREMENT,
	 company_code varchar(200),
	 stock_exchanges_ID varchar(6),
	 share_price DECIMAL(11,2),
	 shares_num DECIMAL(9,0),
	 open_date_time timestamp,
	 remarks varchar(2000),
	 primary key (IPO_id)
)ENGINE=MEMORY AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

create table fsdsba.sectors  (
     sector_Id integer NOT NULL AUTO_INCREMENT,
	 sector_name varchar(200),
	 sector_brief varchar(2000),
	 primary key (sector_Id)
)ENGINE=MEMORY AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


create table fsdsba.users  (
     user_Id  integer NOT NULL AUTO_INCREMENT,
	 username varchar(200),
	 password varchar(200),
	 usertype varchar(20),
	 E_mail varchar(200),
	 mobile_number varchar(50),
	 confirmed char(1),
	 primary key (user_Id)
)ENGINE=MEMORY AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

create table fsdsba.stockexchange  (
     stock_exchanges_ID varchar(6) not null,
	 stock_exchange_brief varchar(2000),
	 contact_address varchar(2000),
	 contact_number varchar(2000),
	 remarks varchar(2000),
	 primary key (stock_exchanges_ID)
);