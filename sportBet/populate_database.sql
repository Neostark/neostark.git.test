/* Populates the database with following infos : 
    FRANCE: Ligue 1
	17:00	 	PSG	-	Bastia			
	20:00	 	Ajaccio	-	Nantes		 	
	20:00	 	Evian TG	-	Guingamp
	
	ESPAGNE: Primera Division
	16:00	 	Real Madrid	-	Malaga		 	
	18:00	 	Valencia	-	Real Sociedad
 */
SET SCHEMA APP; 
delete from MATCHES;
delete from COMPETITIONS;

INSERT INTO COMPETITIONS(COMPETID, COMPETCOUNTRY, COMPETNAME, COMPETYEAR) 
VALUES
(1, 'France', 'Ligue 1', '2013'),
(2, 'Espagne', 'Primera Division', '2013');

INSERT INTO MATCHES(TEAM1, TEAM2, MATCHDATE, COMPETID) 
VALUES
('PSG', 'Bastia', '2013-10-19 17:00:00', 1),
('Ajaccio', 'Nantes', '2013-10-19 20:00:00', 1),
('Evian TG', 'Guingamp', '2013-10-19 20:00:00', 1),

('Real Madrid', 'Malaga', '2013-10-19 16:00:00', 2),
('Valencia', 'Real Sociedad', '2013-10-19 18:00:00', 2);

