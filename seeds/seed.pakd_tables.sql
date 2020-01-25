BEGIN;
TRUNCATE babytivities_users,
babytivities_activities,
babytivities_favorites,
babytivities_materials RESTART IDENTITY CASCADE;
INSERT INTO babytivities_users (id, username, first_name, last_name, password)
VALUES
  (
    '8de080e8-92f6-4689-a671-2f3a256eeb83',
    'dunder',
    'Dunder',
    'Mifflin',
    '$2a$12$lHK6LVpc15/ZROZcKU00QeiD.RyYq5dVlV/9m4kKYbGibkRc5l4Ne'
  ),
  (
    'df593d1a-212e-407f-a46d-464800e8c1be',
    'b.deboop',
    'Bodeep Deboop',
    'Bo',
    '$2a$12$VQ5HgWm34QQK2rJyLc0lmu59cy2jcZiV6U1.bE8rBBnC9VxDf/YQO'
  ),
  (
    '983cdfb1-aab9-4de4-b81a-4bf1b3640235',
    'c.bloggs',
    'Charlie Bloggs',
    'Charlie',
    '$2a$12$2fv9OPgM07xGnhDbyL6xsuAeQjAYpZx/3V2dnu0XNIR27gTeiK2gK'
  ),
  (
    '34a215f5-bb7d-41fd-bf26-890108a8fa83',
    's.smith',
    'Sam Smith',
    'Sam',
    '$2a$12$/4P5/ylaB7qur/McgrEKwuCy.3JZ6W.cRtqxiJsYCdhr89V4Z3rp.'
  ),
  (
    'ba464bf9-2fbd-418e-8080-e462de8543d6',
    'lexlor',
    'Alex Taylor',
    'Lex',
    '$2a$12$Hq9pfcWWvnzZ8x8HqJotveRHLD13ceS7DDbrs18LpK6rfj4iftNw.'
  ),
  (
    '6a583bf6-e06b-46ce-94bd-0d3b410ce521',
    'wippy',
    'Ping Won In',
    'Ping',
    '$2a$12$ntGOlTLG5nEXYgDVqk4bPejBoJP65HfH2JEMc1JBpXaVjXo5RsTUu'
  );
COMMIT;