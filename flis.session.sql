SELECT
  name
FROM
  teams
WHERE
  city = 'London';

SELECT
  player_id
FROM
  players
WHERE
  name like 'V%';

SELECT
  match_date
FROM
  matches
WHERE
  host_team_score NOT BETWEEN 3 AND 5;

SELECT
  players.name
FROM
  players
  JOIN teams USING (team_id)
WHERE
  teams.name = 'Amigos';

SELECT
  players.name,
  jersey_no,
  managers.name
FROM
  players
  JOIN managers USING (team_id)
WHERE
  jersey_no IN (14, 16);

SELECT
  players.name,
  teams.name,
  team_id,
  managers.name,
  managers.dob
FROM
  players
  JOIN managers USING (team_id)
  JOIN teams USING (team_id)
WHERE
  jersey_no = 49