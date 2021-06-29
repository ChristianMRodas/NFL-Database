/***Queries***/
/*Organized by 
	Records
    Misc
*/


/***NFL Records***/
/*Oldest Stadium Ranked
select distinct first_open, stadium_name, location
	from stadium
	order by first_open;
*/

/*Newest Stadium Ranked
select distinct first_open, stadium_name, location
	from stadium
	order by first_open desc;
*/


/*Largest Capacity Ranked
select distinct capacity, stadium_name, location
	from stadium
	order by capacity desc;
*/

/*Highest Recorded Attendence Ranked (*Note that So-Fi and Alligiant Statdiums only have 1 for record_attendence as they are new stadiums)
select distinct record_attendence, stadium_name, location
	from stadium
	order by record_attendence desc;
*/

/*Teams Ranked by SuperBowl Wins
select superbowl_wins, team_name
	from team
	order by superbowl_wins desc;
*/

/*Teams Ranked by AFC/NFC Conference Wins
select nfc_afc_wins, team_name
	from team
	order by nfc_afc_wins desc;
*/

/*Teams Ranked by Divisional Wins
select divisional_wins, team_name
	from team
	order by divisional_wins desc;
*/

/*Coach with most total wins 
select first_name, last_name, wins
	from coach
	order by wins desc;
    */
    
/*Players with the most Superbowl wins Ranked 
select first_name, last_name, jersey_number, position, superbowl_wins
	from player
		inner join stats on player.Id = player_stats_id
order by superbowl_wins desc;
*/
/*Players with the most MVPs Ranked 
select first_name, last_name, jersey_number, position, mvps
	from player
		inner join stats on player.Id = player_stats_id
order by MVPs desc;
*/

/*Players with the most Sacks Ranked 
select first_name, last_name, jersey_number, position, sacks
	from player
		inner join stats on player.Id = player_stats_id
order by sacks desc;
*/

/*Players with the most Catches Ranked 
select first_name, last_name, jersey_number, position, catches
	from player
		inner join stats on player.Id = player_stats_id
order by catches desc;
*/

/*Players with the most Throws Ranked */
select first_name, last_name, jersey_number, position, catches
	from player
		inner join stats on player.Id = player_stats_id
order by catches desc;



/***Misc Queries***/
/*Results: Where a Teams headquarters is location, when it was built and its name
select distinct team_name, stadium_name, location, first_open
	from stadium
		inner join team on team.stadium_id = stadium.ID
*/

/*Results: What team a Player plays for and his position
select first_name, last_name, position, team_name
	from player
		inner join team on team.id = team_id
*/

/*Results: What team a Coach coaches for and his position
select first_name, last_name, team_name
	from coach
		inner join team on team.id = coach.id
*/

/*Results: Who coaches a specific player (Patrick Mahomes)
select player.first_name, player.last_name, coach.first_name, coach.last_name
	from player
    inner join coach on coach.id = player.team_id    
	where player.last_name = 'Mahomes' and player.first_name = 'Patrick'
*/


/*Views*/
/*Player with the most Yards Ranked */
drop view most_throw_yardage;
CREATE VIEW most_throw_yardage AS
select first_name, last_name, jersey_number, position, throws
	from player
		inner join stats on player.Id = player_stats_id
order by throws desc;


/*Triggers*/
/*
drop trigger change_player_last_name;
CREATE TRIGGER change_player_last_name 
    AFTER UPDATE ON stats
    FOR EACH ROW 
 INSERT INTO player
 SET action = 'update',
     player.last_name = 'TOM'
;
INSERT INTO `stats` (`id`, `player_stats_id`, `superbowl_wins`, `sacks`, `mvps`, `catches`, `throws`, `yards`) VALUES
(2, 139, 2, 0, 6, 4, 3, 49, 1500);

UPDATE stats
SET sacks=10, catches=334
WHERE id= 100;

drop trigger before_new_season;
CREATE TRIGGER before_new_season
    before UPDATE ON stats
    FOR EACH ROW 
 INSERT INTO coach
 SET action = 'update',
	
     coach.wins = '0'
;

show triggers;
*/
