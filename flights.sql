

Create Table flights(
    id integer primary key Auto_increment,
    origin text not null,
    destination text not null,
    duration integer not null
);




insert into flights(origin, destination, duration) values("New York","London",415);
insert into flights(origin, destination, duration) values("Shanghai","Paris",760);  
insert into flights(origin, destination, duration) values("Istanbul","Tokyo",700); 
insert into flights(origin, destination, duration) values("New York","Paris",435); 
insert into flights(origin, destination, duration) values("Moscow","London",245);  

select * from flights;

select * from flights where origin = "new York";

select * from flights where duration > 500;

select * from flights where duration > 500 and destination = "Paris";

select * from flights where duration > 500 or destination = "Paris";

select * from flights where origin like "%a%";

select * from flights where origin like "N%";

update flights 
set duration = 425 
where origin = "New York"  
and destination = "london";

delete from flights where destination = "tokyo";

select * from flights limit 3;

select * from flights order by duration;

select * from flights order by duration asc;

select * from flights order by duration desc;

select * from flights order by duration desc limit 3;

select origin, count(id) as total_flights from flights group by origin;

select origin, count(id) as total_flights_more_than_2 from flights group by origin having count(id) > 1;