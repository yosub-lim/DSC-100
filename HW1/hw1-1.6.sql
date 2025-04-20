INSERT INTO Artists VALUES (-1, 'Michael Jackson');
-- This succeeds. Negative integers are allowed as primary keys in SQLite.

INSERT INTO Artists VALUES (2, 'Roger Waters');
-- This fails. ArtistId 2 already exists, and primary keys must be unique.

INSERT INTO Artists VALUES (NULL, 'Roger Waters');
-- This succeeds. SQLite automatically assigns a unique integer value for the primary key.