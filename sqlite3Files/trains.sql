PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE train (train_number integer primary key, train_name text,premium_fair integer, general_fair integer, source_station integer, destination_station text , available_on text);
INSERT INTO train VALUES(1,'Orient Express',800,600,'Paris','Instanbul','Weekdays');
INSERT INTO train VALUES(2,'Flying Scotsman',4000,3500,'Edinburgh','London','(Friday, Saturday, Sunday');
INSERT INTO train VALUES(3,'Golden Arrow',980,860,'Victoria','Dover','(Monday,Tuesday,Wednesday)');
INSERT INTO train VALUES(4,'Golden Chariot',4300,3800,'Bangalore','Goa','(Saturday,Sunday)');
INSERT INTO train VALUES(5,'Maharaja Express',5980,4510,'Delhi','Mumbai','(Wedndesday,Thursday,Friday)');
INSERT INTO train VALUES(6,'Maharaja Express',5980,4510,'Delhi','Mumbai','(Wedndesday,Thursday,Friday)');
CREATE TABLE passenger1(
  "first_name" TEXT,
  "last_name" TEXT,
  "address" TEXT,
  "city" TEXT,
  "county" TEXT,
  "phone2" TEXT,
  "SSN" TEXT,
  "bdate" TEXT
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
COMMIT;
