# --- !Ups
CREATE TABLE entry (
  id                        SERIAL PRIMARY KEY,
  title                     VARCHAR(255) NOT NULL,
  content                   VARCHAR(255) NOT NULL,
  "createdAt"               DATE
);

INSERT INTO entry (id, title, content, "createdAt") VALUES (1, 'Entry 1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua', '2013-06-10');
INSERT INTO entry (id, title, content, "createdAt") VALUES (2, 'Entry 2', 'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '2013-06-10');
INSERT INTO entry (id, title, content, "createdAt") VALUES (3, 'Entry 3', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. At vero eos et accusam et justo duo dolores et ea rebum.', '2013-06-10');

# --- !Downs
DROP TABLE entry;