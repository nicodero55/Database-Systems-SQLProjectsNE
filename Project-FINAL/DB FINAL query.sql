
DELETE FROM airport
WHERE Airport_code = 2;

INSERT INTO airport (Airport_code, Name, City, State)
VALUES
("IAD", "Washington Dulles International Airport", "Chantilly", "Virginia"),
("LAX", "Los Angeles International Airport", "Los Angeles", "California"), 
("JFK", "John F. Kennedy International Airport", "Queens", "New York");

SET SQL_SAFE_UPDATES = 1;

INSERT INTO flight (Flight_number, Airline, Weekdays)
VALUES 
(3, "JetBlue", "MTWThF"),
(1, "American Airlines", "MWF"),
(2, "Delta", "MWThF"),
(4, "United 189", "MTWThF");


INSERT INTO airplane_type (Airplane_type_name, Max_seats, Company)
VALUES
("P101", 300, "Boeing"),
("P555", 280, "Boeing"),
("S123", 350, "Northrop");


 
ALTER TABLE airplane_type
ADD CONSTRAINT chk_seat CHECK (Max_seats <= 600);


INSERT INTO can_land (Airplane_type_name, Airport_code)
VALUES ("P101", "IAD"), ("P555", "IAD"), ("P101", "JFK"), ("P555",  "LAX"), ("S123", "LAX"); 



INSERT INTO airplane (Airplane_id, Total_no_seats, Airplane_type)
VALUES 
(1, 100, "P555"),
(2, 50, "S123");


INSERT INTO leg_instance (Flight_number, Leg_number, Date, No_avail_seats, Airplane_id, Dept_airport_code, Arr_airport_code, Dept_time, Arr_time)
VALUES
(3, 3, "2025-09-15", 110, 2, 2, 1, "10:20:00", "15:00:00"),
(1, 3, "2025-08-05", 100, 1, 1, 2, "12:24:00", "17:00:00"),
(2, 1, "2025-02-15", 20, 1, 1, 2, "12:24:00", "17:00:00");

ALTER TABLE flight_leg
ADD CONSTRAINT chk_fleg CHECK (Leg_number <= 4);

SELECT*FROM leg_instance;


INSERT INTO flight_leg (Flight_number, Leg_number, Dept_airport_code, Arr_airport_code, Sched_dept_time, Sched_arr_time)
VALUES 

(2, 1, 1, 2, "12:24:00", "17:00:00");

DELETE FROM fare 
WHERE Flight_number = 1 ;

ALTER TABLE fare
ADD CONSTRAINT chk_fare CHECK ((Amount <= 75000.00) AND (Amount >= 0));

INSERT INTO fare (Flight_number, Fare_code, Amount)
VALUES 
(4, 1, 1000.00), 
(4,2, 500.00), 
(1,1, 1400.00),
(2, 1, 1500.00),
(4,3, 450.00);

UPDATE fare
SET Restrictions = "First Class Only"
WHERE Flight_number = 4 AND Fare_code = 1;
# (a) QUERY: #(a)	Write a query statement to create a list of aircraft 
# types that can land in the airport at Washington Dulles International Airport (Airport_code is 'IAD').

SELECT (Airplane_type_name) FROM airplane_type;
 

SELECT can_land.Airplane_type_name, can_land.Airport_code, airplane_type.Max_seats, airplane_type.Company
FROM can_land
JOIN airplane_type ON can_land.Airplane_type_name = airplane_type.Airplane_type_name
WHERE Airport_code = "IAD";


#(b)	Write a query statement to list all fare information for flight 'United 189'.

# input far information for united 189
# unput flight united 189

SELECT fare.Flight_number, fare.Fare_code, fare.Amount, fare.Restrictions, flight.Airline
FROM fare
JOIN flight ON fare.Flight_number = flight.Flight_number
WHERE Airline = "United 189";


# (c)	Write a query statement to create a list of direct flights (including scheduled departure time and arrival time) 
# starting from Baltimore Washington International Airport (Airport_code is 'BWI') and terminating at San Francisco International 
# Airport (Airport_code is 'SFO') which have more than two seats available on 8/16/2025. In addition, write another query to create 
# a list of direct return flights from 'SFO' to 'BWI' on 8/23/2025.


SELECT * FROM leg_instance 
WHERE Dept_airport_code = "BWI" AND Arr_airport_code = "SFO" AND No_avail_seats > 2 AND Date = "2025-08-16";

SELECT * FROM leg_instance 
WHERE Dept_airport_code = "SFO" AND Arr_airport_code = "BWI" AND Date = "2025-08-23";


INSERT INTO flight (Flight_number, Airline, Weekdays)
VALUES 
(3, "JetBlue", "MTWThF"),
(1, "American Airlines", "MWF"),
(2, "Delta", "MWThF"),
(4, "United 189", "MTWThF");

INSERT INTO flight_leg (Flight_number, Leg_number, Dept_airport_code, Arr_airport_code, Sched_dept_time, Sched_arr_time)
VALUES 

(2, 1, 1, 2, "12:24:00", "17:00:00");

INSERT INTO leg_instance (Flight_number, Leg_number, Date, No_avail_seats, Airplane_id, 
Dept_airport_code, Arr_airport_code, Dept_time, Arr_time)
VALUES (2,4, "2025-08-23", 40, 2, "SFO", "BWI", "13:00:00", "18:00:00"),
(2,3, "2025-08-23", 43, 2, "IAD", "SFO", "7:00:00", "12:30:00"),
(2,2, "2025-08-22", 55, 2, "SFO", "IAD", "23:00:00", "04:00:00"),
(2,1, "2025-08-22", 34, 2, "BWI", "SFO", "15:00:00", "21:00:00"),
(1, 1, "2025-08-15", 110, 2,"LAX", "SFO", "22:00:00", "23:30:00"),
(1, 2, "2025-08-16", 12, 2,"SFO", "BWI", "01:00:00", "6:30:00"),
(1, 3, "2025-08-16", 1, 2,"BWI", "SFO", "10:00:00", "15:30:00"),
(4, 1, "2025-08-16", 33, 1, "BWI", "SFO", "08:30:00", "13:30:00"),
(4, 2, "2025-08-16", 50, 1, "SFO", "LAX", "14:30:00", "16:00:00"),
(4, 3, "2025-08-16", 40, 1, "LAX", "SFO", "18:30:00", "20:00:00"),
(4, 4, "2025-08-24", 33, 1, "SFO", "BWI", "08:30:00", "13:30:00");

UPDATE leg_instance
SET Date = "2025-08-24"
WHERE Flight_number = 4 AND Leg_number = 4;

UPDATE leg_instance
SET Arr_airport_code = "BWI"
WHERE Flight_number = 4 AND Leg_number = 4;


DELETE FROM flight_leg 
WHERE
    Flight_number = '2';


INSERT INTO airport (Airport_code, Name, City, State)
VALUES ("SFO", "San Francisco International Airport", "San Francisco", "California"), 
("BWI", "Baltimore Washington International Airport", "Baltimore", "Maryland");



