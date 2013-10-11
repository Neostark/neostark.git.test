CREATE TABLE APP.CompetitionTable (
		id 				int,
		competName 		VARCHAR(32),
		competYear 		VARCHAR(4)
	);

CREATE TABLE APP.MatchTable (
		competID		int,
		id				int,
		team1			VARCHAR(32),
		team2			VARCHAR(32),
		matchDate		timestamp
	);
	
CREATE TABLE APP.STATISTICS (
		gameID			int, 
		team			VARCHAR(32)
	);
	
CREATE TABLE APP.COMPOSITION (
		gameID			int,
		team			VARCHAR(32),
		player1			VARCHAR(32),
		player2			VARCHAR(32),
		player3			VARCHAR(32),
		player4			VARCHAR(32),
		player5			VARCHAR(32),
		player6			VARCHAR(32),
		player7			VARCHAR(32),
		player8			VARCHAR(32),
		player9			VARCHAR(32),
		player10		VARCHAR(32),
		player11		VARCHAR(32)
	);

CREATE TABLE APP.GAMEEVENT (
		gameID			int,
		team			VARCHAR(32),
		event			VARCHAR(30),
		minuteOfEvent	int, 
		playerConcerned	VARCHAR(32),
		playerEntering	VARCHAR(32)
	);
		
		
