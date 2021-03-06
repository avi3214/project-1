PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE train (train_number integer primary key,
 train_name text
 ,premium_fair integer, 
 general_fair integer, 
 source_station integer, 
 destination_station text , 
 available_on text
 );
INSERT INTO train VALUES(1,'Orient Express',800,600,'Paris','Instanbul','Weekdays');
INSERT INTO train VALUES(2,'Flying Scotsman',4000,3500,'Edinburgh','London','(Friday, Saturday, Sunday');
INSERT INTO train VALUES(3,'Golden Arrow',980,860,'Victoria','Dover','(Monday,Tuesday,Wednesday)');
INSERT INTO train VALUES(4,'Golden Chariot',4300,3800,'Bangalore','Goa','(Saturday,Sunday)');
INSERT INTO train VALUES(5,'Maharaja Express',5980,4510,'Delhi','Mumbai','(Wedndesday,Thursday,Friday)');
INSERT INTO train VALUES(6,'Maharaja Express',5980,4510,'Delhi','Mumbai','(Wedndesday,Thursday,Friday)');

CREATE TABLE passenger1(
  "first_name" text not null,
  "last_name" text not null,
  "address" text not null,
  "city" text not null
  "county" text not null,
  "phone2" text not null,
  "SSN" text not null,
  "bdate" text not null
);
INSERT INTO passenger1 VALUES('James','Butt','6649 N Blue Gum St','New Orleans','Orleans','504-845-1427','264816896','10/10/68');
INSERT INTO passenger1 VALUES('Josephine','Darakjy','4 B Blue Ridge Blvd','Brighton','Livingston','810-374-9840','240471168','11/1/75');
INSERT INTO passenger1 VALUES('Art','Venere','8 W Cerritos Ave #54','Bridgeport','Gloucester','856-264-4130','285200976','11/13/82');
INSERT INTO passenger1 VALUES('Lenna','Paprocki','639 Main St','Anchorage','Anchorage','907-921-2010','309323096','8/9/78');
INSERT INTO passenger1 VALUES('Donette','Foller','34 Center St','Hamilton','Butler','513-549-4561','272610795','6/11/90');
INSERT INTO passenger1 VALUES('Simona','Morasca','3 Mcauley Dr','Ashland','Ashland','419-800-6759','250951162','8/15/94');
INSERT INTO passenger1 VALUES('Mitsue','Tollner','7 Eads St','Chicago','Cook','773-924-8565','272913578','7/4/84');
INSERT INTO passenger1 VALUES('Leota','Dilliard','7 W Jackson Blvd','San Jose','Santa Clara','408-813-1105','268682534','5/9/91');
INSERT INTO passenger1 VALUES('Sage','Wieser','5 Boston Ave #88','Sioux Falls','Minnehaha','605-794-4895','310908858','2/25/82');
INSERT INTO passenger1 VALUES('Kris','Marrier','228 Runamuck Pl #2808','Baltimore','Baltimore City','410-804-4694','322273872','4/4/56');
INSERT INTO passenger1 VALUES('Minna','Amigon','2371 Jerrold Ave','Kulpsville','Montgomery','215-422-8694','256558303','9/9/95');
INSERT INTO passenger1 VALUES('Abel','Maclead','37275 St  Rt 17m M','Middle Island','Suffolk','631-677-3675','302548590','11/5/60');
INSERT INTO passenger1 VALUES('Kiley','Caldarera','25 E 75th St #69','Los Angeles','Los Angeles','310-254-3084','284965676','5/9/81');
INSERT INTO passenger1 VALUES('Graciela','Ruta','98 Connecticut Ave Nw','Chagrin Falls','Geauga','440-579-7763','277292710','2/25/82');
INSERT INTO passenger1 VALUES('Cammy','Albares','56 E Morehead St','Laredo','Webb','956-841-7216','331160133','4/4/56');
INSERT INTO passenger1 VALUES('Mattie','Poquette','73 State Road 434 E','Phoenix','Maricopa','602-953-6360','331293204','9/9/95');
INSERT INTO passenger1 VALUES('Meaghan','Garufi','69734 E Carrillo St','Mc Minnville','Warren','931-235-7959','290123298','11/2/60');
INSERT INTO passenger1 VALUES('Gladys','Rim','322 New Horizon Blvd','Milwaukee','Milwaukee','414-377-2880','286411536','5/9/91');
INSERT INTO passenger1 VALUES('Yuki','Whobrey','1 State Route 27','Taylor','Wayne','313-341-4470','294860856','2/25/85');
INSERT INTO passenger1 VALUES('Fletcher','Flosi','394 Manchester Blvd','Rockford','Winnebago','815-426-5657','317434088','4/4/61');
INSERT INTO passenger1 VALUES('','','','','','','',NULL);

CREATE TABLE booked(SSN text not null,
 train_number integer not null, 
 ticket_type text not null, 
 status text not null
 );
INSERT INTO booked VALUES('264816896',3,'Premium','Booked');
INSERT INTO booked VALUES('240471168',2,'General','Booked');
INSERT INTO booked VALUES('285200976',4,'Premium','Booked');
INSERT INTO booked VALUES('285200976',2,'Premium','Booked');
INSERT INTO booked VALUES('317434088',2,'Premium','Booked');
INSERT INTO booked VALUES('310908858',2,'General','Booked');
INSERT INTO booked VALUES('322273872',2,'General','Booked');
INSERT INTO booked VALUES('256558303',3,'Premium','WaitL');
INSERT INTO booked VALUES('302548590',2,'General','WaitL');
INSERT INTO booked VALUES('284965676',3,'Premium','WaitL');
INSERT INTO booked VALUES('277292710',3,'General','WaitL');
INSERT INTO booked VALUES('331160133',3,'General','WaitL');
INSERT INTO booked VALUES('331293204',3,'General','WaitL');
INSERT INTO booked VALUES('290123298',3,'General','WaitL');
INSERT INTO booked VALUES('286411536',4,'Premium','Booked');
INSERT INTO booked VALUES('294860856',4,'Premium','Booked');
INSERT INTO booked VALUES('317434088',4,'Premium','Booked');
INSERT INTO booked VALUES('310908858',4,'Premium','Booked');
INSERT INTO booked VALUES('322273872',4,'Premium','Booked');
INSERT INTO booked VALUES('256558303',4,'Premium','Booked');
INSERT INTO booked VALUES('302548590',4,'Premium','Booked');
INSERT INTO booked VALUES('284965676',4,'General','Booked');
INSERT INTO booked VALUES('277292710',4,'General','Booked');
INSERT INTO booked VALUES('331160133',4,'General','Booked');
INSERT INTO booked VALUES('331293204',4,'General','Booked');

CREATE TABLE status(
 date text not null,
 train_name text not null, 
 premium_available int not null, 
 gen_available int not null, 
 premium_taken int not null,
 gen_taken int not null
 );
INSERT INTO status VALUES('19/02/2022',' Orient Express',10,10,0,0);
INSERT INTO status VALUES('20/02/2022',' Flying Scottsman',8,5,2,5);
INSERT INTO status VALUES('21/02/2022',' Guwahati Express',7,6,3,4);
INSERT INTO status VALUES('21/02/2022',' Golden Chariot',6,3,4,7);
COMMIT;
 
-- QUESTION 2  Enter a train name and retrieve all the passengers with confirmed status traveling in that train. 
-- Chose Golden Chariot as example 
SELECT T.[train_name], B.[SSN], B.[train_number], T.[train_number], B.[status], P.[first_name], P.[last_name]
FROM TRAIN T, PASSENGER1 P, BOOKED B
WHERE B.SSN = P.SSN AND B.[train_number] = T.[train_number] AND B.status = 'Booked' AND T.[train_name] = 'Golden Chariot';
    -- OUTPUT 
Golden Chariot|285200976|4|4|Booked|Art|Venere
Golden Chariot|286411536|4|4|Booked|Gladys|Rim
Golden Chariot|294860856|4|4|Booked|Yuki|Whobrey
Golden Chariot|317434088|4|4|Booked|Fletcher|Flosi
Golden Chariot|310908858|4|4|Booked|Sage|Wieser
Golden Chariot|322273872|4|4|Booked|Kris|Marrier
Golden Chariot|256558303|4|4|Booked|Minna|Amigon
Golden Chariot|302548590|4|4|Booked|Abel|Maclead
Golden Chariot|284965676|4|4|Booked|Kiley|Caldarera
Golden Chariot|277292710|4|4|Booked|Graciela|Ruta
Golden Chariot|331160133|4|4|Booked|Cammy|Albares
Golden Chariot|331293204|4|4|Booked|Mattie|Poquette

-- QUESTION 3 List all the trains where the waiting list is full along with passengers on the waiting list in descending order
SELECT P.[first_name], P.[last_name], P.[SSN], T.[train_number], T.[train_number], B.[SSN], B.[train_number], B.[status]
FROM TRAIN T, BOOKED B, PASSENGER1 P
WHERE B.[status] = 'WaitL' AND P.[SSN] = B.[SSN] AND T.[train_number] = B.[train_number]
ORDER BY P.[last_name] DESC;
-- OUTPUT
Graciela|Ruta|277292710|3|3|277292710|3|WaitL
Mattie|Poquette|331293204|3|3|331293204|3|WaitL
Abel|Maclead|302548590|2|2|302548590|2|WaitL
Meaghan|Garufi|290123298|3|3|290123298|3|WaitL
Kiley|Caldarera|284965676|3|3|284965676|3|WaitL
Minna|Amigon|256558303|3|3|256558303|3|WaitL
Cammy|Albares|331160133|3|3|331160133|3|WaitL

-- QUESTION 4 Cancel a ticket (delete a record) and confirm that a passenger on the waiting list gets a ticket status confirmation
DELETE FROM booked
WHERE SSN = 264816896;
UPDATE booked
SET status = 'Booked'
WHERE SSN = 290123298 AND status = 'WaitL';
SELECT * FROM BOOKED;

-- QUESTION 5 List the passengers traveling on Sunday with confirmed tickets
SELECT P.[first_name], P.[last_name], B.[status], P.[SSN], B.[SSN], T.[available_on]
FROM PASSENGER1 P, BOOKED B, TRAIN T
WHERE (INSTR(T.[available_on], 'Sunday') > 0) AND B.[status] = 'Booked' AND P.[SSN] = B.[SSN];
 -- OUTPUT 
 Josephine|Darakjy|Booked|240471168|240471168|(Friday, Saturday, Sunday
Minna|Amigon|Booked|256558303|256558303|(Friday, Saturday, Sunday
James|Butt|Booked|264816896|264816896|(Friday, Saturday, Sunday
Graciela|Ruta|Booked|277292710|277292710|(Friday, Saturday, Sunday
Kiley|Caldarera|Booked|284965676|284965676|(Friday, Saturday, Sunday
Art|Venere|Booked|285200976|285200976|(Friday, Saturday, Sunday
Gladys|Rim|Booked|286411536|286411536|(Friday, Saturday, Sunday
Yuki|Whobrey|Booked|294860856|294860856|(Friday, Saturday, Sunday
Abel|Maclead|Booked|302548590|302548590|(Friday, Saturday, Sunday
Sage|Wieser|Booked|310908858|310908858|(Friday, Saturday, Sunday
Fletcher|Flosi|Booked|317434088|317434088|(Friday, Saturday, Sunday
Kris|Marrier|Booked|322273872|322273872|(Friday, Saturday, Sunday
Cammy|Albares|Booked|331160133|331160133|(Friday, Saturday, Sunday
Mattie|Poquette|Booked|331293204|331293204|(Friday, Saturday, Sunday
Josephine|Darakjy|Booked|240471168|240471168|(Saturday,Sunday)
Minna|Amigon|Booked|256558303|256558303|(Saturday,Sunday)
James|Butt|Booked|264816896|264816896|(Saturday,Sunday)
Graciela|Ruta|Booked|277292710|277292710|(Saturday,Sunday)
Kiley|Caldarera|Booked|284965676|284965676|(Saturday,Sunday)
Art|Venere|Booked|285200976|285200976|(Saturday,Sunday)
Gladys|Rim|Booked|286411536|286411536|(Saturday,Sunday)
Yuki|Whobrey|Booked|294860856|294860856|(Saturday,Sunday)
Abel|Maclead|Booked|302548590|302548590|(Saturday,Sunday)
Sage|Wieser|Booked|310908858|310908858|(Saturday,Sunday)
Fletcher|Flosi|Booked|317434088|317434088|(Saturday,Sunday)
Kris|Marrier|Booked|322273872|322273872|(Saturday,Sunday)
Cammy|Albares|Booked|331160133|331160133|(Saturday,Sunday)
Mattie|Poquette|Booked|331293204|331293204|(Saturday,Sunday)

 -- QUESTION 6  For each train, list the train???s name and the number of occupied and available seats
 SELECT S.[train_name], S.[premium_available], S.[gen_available], S.[premium_taken], S.[gen_taken]
FROM STATUS S;
--OUTPUT 
 Orient Express|10|10|0|0
 Flying Scottsman|8|5|2|5
 Guwahati Express|7|6|3|4
 Golden Chariot|6|3|4|7

-- QUESTION 7 Enter the passenger???s last name and first name and retrieve all trains they are booked on. 
  -- Name default has been set to James Butt in the WHERE clause
SELECT P.[first_name], P.[last_name], B.[train_number], T.[train_name]
FROM PASSENGER1 P, BOOKED B, TRAIN T
WHERE P.[first_name] = 'James' AND P.[last_name] = 'Butt' AND P.SSN = B.SSN AND B.status = 'Booked' AND B.[train_number] = T.[train_number];
  -- OUTPUT 
first_name|last_name|train_number|train_name
James|Butt|3|Golden Arrow

-- Question 8 Get the train information (Train Number, Train Name, Source and Destination) and passenger information (Name, Address, Category, ticket status) of passengers who are between the ages of 50 to 60. 
SELECT P.[first_name], P.[last_name], P.[bdate], P.[address], B.[ticket_type], B.[status], T.[train_number], T.[train_name], T.[source_station], T.[destination_station]  
FROM PASSENGER1 P, BOOKED B, TRAIN T
WHERE P.SSN = B.SSN AND B.[train_number] = T.[train_number] AND (CAST(substr(datetime('now'),1,4) AS INTEGER) - CAST(('19' || substr(P.[bdate],-2,2)) AS INTEGER)) BETWEEN 50 AND 60;
  -- OUTPUT
first_name|last_name|bdate|address|ticket_type|status|train_number|train_name|source_station|destination_station
James|Butt|10/10/68|6649 N Blue Gum St|Premium|Booked|3|Golden Arrow|Victoria|Dover

-- Question 9 List all the train name along with count of passengers it is carrying. 
SELECT S.[train_name], S.[premium_taken] + S.[gen_taken]
FROM STATUS S;
  -- OUTPUT
train_name|S.[premium_taken] + S.[gen_taken]
Orient Express|0
Flying Scottsman|7
Guwahati Express|7
Golden Chariot|11

-- Question 10 List all passengers who are travelling on Saturday and Sunday and are using premium service.
  -- Names repeated twice means multiple tickets for the same customer.
SELECT P.[first_name], P.[last_name]
FROM PASSENGER1 P, TRAIN T, BOOKED B
WHERE B.ticket_type = 'Premium' AND B.[train_number] = T.[train_number] AND B.SSN = P.SSN AND (INSTR(T.[available_on], 'Saturday') > 0 OR INSTR(T.[available_on], 'Sunday') > 0);
  -- OUTPUT
first_name|last_name
Art|Venere
Art|Venere
Fletcher|Flosi
Gladys|Rim
Yuki|Whobrey
Fletcher|Flosi
Sage|Wieser
Kris|Marrier
Minna|Amigon
Abel|Maclead