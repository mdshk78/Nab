-- first run the following command to create database

create database nab;

use nab;

-- run the application, tables will be created automatically, once tables got created run the following inserts and commit the operation.


insert into currency(currency,date) values("BTC","20180507");
insert into currency(currency,date) values("ETC","20180507");
insert into currency(currency,date) values("LTC","20180507");

insert into quote(price,time,currency_id) values(34.98,"0915",1);
insert into quote(price,time,currency_id) values(36.13,"1045",1);
insert into quote(price,time,currency_id) values(37.01,"1230",1);
insert into quote(price,time,currency_id) values(35.98,"1400",1);
insert into quote(price,time,currency_id) values(33.56,"1530",1);

insert into quote(price,time,currency_id) values(1.45,"0900",2);
insert into quote(price,time,currency_id) values(1.87,"1030",2);
insert into quote(price,time,currency_id) values(1.55,"1245",2);
insert into quote(price,time,currency_id) values(2.01,"1515",2);
insert into quote(price,time,currency_id) values(2.15,"1700",2);

insert into quote(price,time,currency_id) values(14.32,"0930",3);
insert into quote(price,time,currency_id) values(14.87,"1115",3);
insert into quote(price,time,currency_id) values(15.03,"1245",3);
insert into quote(price,time,currency_id) values(14.76,"1400",3);
insert into quote(price,time,currency_id) values(14.15,"1700",3);

commit;



-- hit the url 
-- http://localhost:8090/currency
-- it should display following data
[
	{
		"currency":"BTC",
		"date":"2018-05-07",
		"quotes":[
			{"time":"0915","price":34.98},
			{"time":"1045","price":36.13},
			{"time":"1230","price":37.01},
			{"time":"1400","price":35.98},
			{"time":"1530","price":33.56}
		]
	},
	{
		"currency":"ETC",
		"date":"2018-05-07",
		"quotes":[
			{"time":"0900","price":1.45},
			{"time":"1030","price":1.87},
			{"time":"1245","price":1.55},
			{"time":"1515","price":2.01},
			{"time":"1700","price":2.15}
		]
	},
	{
		"currency":"LTC",
		"date":"2018-05-07",
		"quotes":[
			{"time":"0930","price":14.32},
			{"time":"1115","price":14.87},
			{"time":"1245","price":15.03},
			{"time":"1400","price":14.76},
			{"time":"1700","price":14.15}
		]
	}
]