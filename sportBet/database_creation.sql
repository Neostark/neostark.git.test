CREATE TABLE APP.COMPETITIONS (
		competID 		int NOT NULL PRIMARY KEY,
		competCountry	VARCHAR(32) NOT NULL,
		competName 		VARCHAR(32) NOT NULL,
		competYear 		VARCHAR(4) NOT NULL
	);

CREATE TABLE APP.MATCHES (
		gameID			int NOT NULL PRIMARY KEY,
		team1			VARCHAR(32) NOT NULL,
		team2			VARCHAR(32) NOT NULL,
		matchDate		timestamp NOT NULL, 
		competID		int NOT NULL REFERENCES APP.COMPETITIONS(competID)
	);
	
CREATE TABLE APP.STATISTICS (
		statID			int NOT NULL PRIMARY KEY,
		team			VARCHAR(32) NOT NULL,
		gameID			int NOT NULL REFERENCES APP.MATCHES(gameID)
	);
	
CREATE TABLE APP.COMPOSITIONS (
		compoID			int NOT NULL PRIMARY KEY,
		team			VARCHAR(32) NOT NULL,
		player1			VARCHAR(32) NOT NULL,
		player2			VARCHAR(32) NOT NULL,
		player3			VARCHAR(32) NOT NULL,
		player4			VARCHAR(32) NOT NULL,
		player5			VARCHAR(32) NOT NULL,
		player6			VARCHAR(32) NOT NULL,
		player7			VARCHAR(32) NOT NULL,
		player8			VARCHAR(32) NOT NULL,
		player9			VARCHAR(32) NOT NULL,
		player10		VARCHAR(32) NOT NULL,
		player11		VARCHAR(32) NOT NULL,
		gameID			int NOT NULL REFERENCES APP.MATCHES(gameID)
	);

CREATE TABLE APP.GAMEEVENTS (
		gameEventID		int NOT NULL PRIMARY KEY,
		team			VARCHAR(32) NOT NULL,
		event			VARCHAR(30) NOT NULL,
		minuteOfEvent	int NOT NULL, 
		playerConcerned	VARCHAR(32) NOT NULL,
		playerEntering	VARCHAR(32) NOT NULL,
		gameID			int NOT NULL REFERENCES APP.MATCHES(gameID)
	);
		
		
