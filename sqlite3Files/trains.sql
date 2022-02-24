PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE train (train_number integer primary key, train_name text,premium_fair integer, general_fair integer, source_station integer, destination_station text , available_on text);
INSERT INTO train VALUES(1,'Orient Express',800,600,'Paris','Instanbul','Weekdays');
INSERT INTO train VALUES(2,'Flying Scotsman',4000,3500,'Edinburgh','London','(Friday, Saturday, Sunday');
INSERT INTO train VALUES(3,'Golden Arrow',980,860,'Victoria','Dover','(Monday,Tuesday,Wednesday)');
INSERT INTO train VALUES(4,'Golden Chariot',4300,3800,'Bangalore','Goa','(Saturday,Sunday)');
INSERT INTO train VALUES(5,'Maharaja Express',5980,4510,'Delhi','Mumbai','(Wedndesday,Thursday,Friday)');
COMMIT;
