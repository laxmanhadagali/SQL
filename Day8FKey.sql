USE startersql;

CREATE TABLE adresses(
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE CASCADE
    );
    
    INSERT INTO adresses(user_id,street,city,state,pincode) VALUES
                                                                  (4,'konapapana Agrahara','banglore','karnataka','580058'),
                                                                  (7,'Shivaji circle','Dharwad','karnataka','580068'),
                                                                  (5,'Electronic city','banglore','karnataka','580029'),
																	(6,'College Road','Belagavi','Karnataka','590001'),
											
																	(8,'Temple Street','Mysuru','Karnataka','570001'),
																	-- (9,'Ring Road','Tumakuru','Karnataka','572101'),
																	(10,'Main Road','Shivamogga','Karnataka','577201'),

																	-- (11,'Gandhi Nagar','Ballari','Karnataka','583101'),
																	(12,'Nehru Road','Kalaburagi','Karnataka','585101'),
																
																	(14,'Beach Road','Udupi','Karnataka','576101'),
																	(15,'Old Bus Stand Road','Hassan','Karnataka','573201'),

																	(16,'New Extension','Chitradurga','Karnataka','577501'),
																	(17,'Fort Road','Bidar','Karnataka','585401'),
																	(18,'MG Road','Raichur','Karnataka','584101'),
																	(19,'Temple Road','Koppal','Karnataka','583231'),
																	(20,'Station Cross','Gadag','Karnataka','582101'),

																	(21,'Ring Road','Bagalkot','Karnataka','587101'),
																	(22,'Canal Road','Vijayapura','Karnataka','586101'),
																	(23,'Lake View','Mandya','Karnataka','571401'),
																	(24,'Bus Stand Road','Chikkamagaluru','Karnataka','577101'),
																	(25,'Hill Road','Kodagu','Karnataka','571201'),

																	(26,'IT Park Road','Bengaluru','Karnataka','560100'),
																	(27,'Whitefield Road','Bengaluru','Karnataka','560066'),
																	(28,'Electronic City','Bengaluru','Karnataka','560100'),
																	(29,'BTM Layout','Bengaluru','Karnataka','560076'),
																	(30,'Jayanagar','Bengaluru','Karnataka','560011'),

																	(31,'Indiranagar','Bengaluru','Karnataka','560038'),
																	(32,'Rajajinagar','Bengaluru','Karnataka','560010'),
																	(33,'Yelahanka','Bengaluru','Karnataka','560064'),
																	(34,'Hebbal','Bengaluru','Karnataka','560024'),
																	(35,'KR Puram','Bengaluru','Karnataka','560036'),

																	(36,'Old Town','Kolar','Karnataka','563101'),
																	(37,'Market Area','Chamarajanagar','Karnataka','571313'),
																	(38,'Temple Lane','Srirangapatna','Karnataka','571438'),
																	(39,'Bus Depot Road','Ramanagara','Karnataka','562159'),
																	(40,'City Center','Haveri','Karnataka','581110'),

																	(41,'Town Hall Road','Karwar','Karnataka','581301'),
																	(42,'Harbor Road','Honnavar','Karnataka','581334'),
																	(43,'Beach Side','Gokarna','Karnataka','581326'),
																	(44,'Forest Road','Sirsi','Karnataka','581401'),
																	(45,'College Cross','Yadgir','Karnataka','585202'),

																	(46,'Industrial Area','Hospet','Karnataka','583201'),
																	(47,'Railway Colony','Challakere','Karnataka','577522'),
																	(48,'New Layout','Doddaballapur','Karnataka','561203'),
																	(49,'Highway Road','Kunigal','Karnataka','572130');
	
SET AUTOCOMMIT=0;
   DELETE FROM users WHERE user_id=4; 
   DELETE FROM adresses WHERE user_id=4; 
   ROLLBACK;
                    
    SELECT*FROM adresses;
    ALTER TABLE users RENAME COLUMN id TO user_id;
    SELECT * FROM users;
    COMMIT;