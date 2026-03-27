DROP DATABASE IF EXISTS books_db;
CREATE DATABASE books_db;
\c books_db

CREATE TABLE books (
  book_id   SERIAL        PRIMARY KEY,
  title     TEXT          NOT NULL,
  author    TEXT          NOT NULL,
  genre     TEXT          NOT NULL,
  year      INT           NOT NULL,
  rating    NUMERIC(3,1)  NOT NULL,
  available BOOLEAN       DEFAULT TRUE
);

INSERT INTO books (title, author, genre, year, rating, available) VALUES
  ('The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams',       'sci-fi',      1979, 9.3, TRUE),
  ('Dune',                                  'Frank Herbert',        'sci-fi',      1965, 9.5, FALSE),
  ('The Name of the Wind',                  'Patrick Rothfuss',     'fantasy',     2007, 9.4, TRUE),
  ('The Way of Kings',                      'Brandon Sanderson',    'fantasy',     2010, 9.6, FALSE),
  ('Gone Girl',                             'Gillian Flynn',        'mystery',     2012, 8.8, TRUE),
  ('The Girl with the Dragon Tattoo',       'Stieg Larsson',        'mystery',     2005, 9.0, TRUE),
  ('Sapiens',                               'Yuval Noah Harari',    'non-fiction', 2011, 9.2, FALSE),
  ('Educated',                              'Tara Westover',        'non-fiction', 2018, 9.4, TRUE),
  ('The Great Gatsby',                      'F. Scott Fitzgerald',  'fiction',     1925, 8.9, TRUE),
  ('To Kill a Mockingbird',                 'Harper Lee',           'fiction',     1960, 9.5, FALSE),
  ('Beloved',                               'Toni Morrison',        'fiction',     1987, 9.1, TRUE),
  ('Project Hail Mary',                     'Andy Weir',            'sci-fi',      2021, 9.6, TRUE);
