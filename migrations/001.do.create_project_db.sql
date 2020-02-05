CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TYPE type AS ENUM (
  'Physical',
  'Literacy',
  'Art',
  'Sensory',
  'Science',
  ''
);
CREATE TYPE age AS ENUM ('0-12m', '13-24m', '25-36m');
CREATE TABLE babytivities_users (
  id uuid DEFAULT uuid_generate_v4 (),
  username TEXT NOT NULL UNIQUE,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  password TEXT NOT NULL,
  date_created TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (id)
);
CREATE TABLE babytivities_activities (
  id uuid DEFAULT uuid_generate_v4 (),
  title TEXT NOT NULL,
  instructions TEXT NOT NULL,
  image TEXT,
  age age,
  type type,
  date_created TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (id)
);
CREATE TABLE babytivities_favorites (
  id uuid DEFAULT uuid_generate_v4 (),
  user_id uuid REFERENCES babytivities_users(id) ON DELETE CASCADE NOT NULL,
  activity_id uuid REFERENCES babytivities_activities(id) ON DELETE CASCADE NOT NULL,
  date_created TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (id)
);
CREATE TABLE babytivities_materials (
  id uuid DEFAULT uuid_generate_v4 (),
  item TEXT NOT NULL,
  activity_id uuid REFERENCES babytivities_activities(id) ON DELETE CASCADE,
  PRIMARY KEY (id)
);