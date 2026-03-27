# swe-6-1-sql-basics

This assignment covers **Intro to Databases** and **Intro to SQL**. You'll practice reading and writing SQL queries against a pre-built `books_db` database — no JavaScript involved.

> **Short Response:** Complete the written questions in the [swe-6-1-sql-basics-sr](https://github.com/The-Marcy-Lab-School/swe-6-1-sql-basics-sr) repo.

## Setup

**1. Clone this repo and navigate into it.**

**2. Run the seed file to create and populate `books_db`:**

**Mac:**
```sh
psql -f setup.sql
```

**Windows/WSL:**
```sh
sudo -u postgres psql -f setup.sql
```

**3. Connect to the database:**

**Mac:**
```sh
psql books_db
```

**Windows/WSL:**
```sh
sudo -u postgres psql books_db
```

**4. Open `queries.sql`** and write your answer below each prompt. You can run queries in `psql` directly, or open the file in TablePlus and run queries from there.

---

## Grading

### Part 1: SELECT — Basic Queries (3 pts)

- [ ] 1. Select all columns from all books
- [ ] 2. Select only the `title` and `author` for all books
- [ ] 3. Select the `title`, `author`, and `rating` for all books

### Part 2: WHERE — Filtering Data (8 pts)

- [ ] 4. Select all books in the `'sci-fi'` genre
- [ ] 5. Select all books published after `2000`
- [ ] 6. Select all books with a rating of `9.0` or higher
- [ ] 7. Select all books where `available = TRUE`
- [ ] 8. Select all books where `available = FALSE`
- [ ] 9. Select all books published before `1970`
- [ ] 10. Select all `'sci-fi'` books with a rating above `9.4` (AND)
- [ ] 11. Select all books in the `'fantasy'` or `'mystery'` genre (OR)

### Part 3: ORDER BY & LIMIT — Sorting and Slicing (7 pts)

- [ ] 12. Select all books, ordered by `rating` highest to lowest
- [ ] 13. Select all books, ordered by `year` oldest to newest
- [ ] 14. Select the 5 highest-rated books
- [ ] 15. Select the 3 most recently published books
- [ ] 16. Select all `'fiction'` books, ordered by `year` oldest to newest
- [ ] 17. Select all available books with a rating of `9.0` or higher, ordered by `rating` highest to lowest
- [ ] 18. Select the `title` and `genre` of the 3 oldest books

### Part 4: INSERT — Creating Data (2 pts)

- [ ] 19. Insert a new book of your choice
- [ ] 20. Select all books to verify the insert

### Part 5: UPDATE — Modifying Data (2 pts)

- [ ] 21. Mark the book you inserted as unavailable (`available = FALSE`)
- [ ] 22. Update the `rating` of `'Project Hail Mary'` to `9.7`

### Part 6: DELETE — Removing Data (2 pts)

- [ ] 23. Delete the book with `book_id = 5`
- [ ] 24. Select all books to verify the deletion

---

## Expected Output

Use these to check your work after writing each query.

<details>

**<summary>1. Select all columns from all books (12 rows)</summary>**

```
 book_id |                title                 |        author         |    genre    | year | rating | available
---------+--------------------------------------+-----------------------+-------------+------+--------+-----------
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams         | sci-fi      | 1979 |    9.3 | t
       2 | Dune                                 | Frank Herbert         | sci-fi      | 1965 |    9.5 | f
       3 | The Name of the Wind                 | Patrick Rothfuss      | fantasy     | 2007 |    9.4 | t
       4 | The Way of Kings                     | Brandon Sanderson     | fantasy     | 2010 |    9.6 | f
       5 | Gone Girl                            | Gillian Flynn         | mystery     | 2012 |    8.8 | t
       6 | The Girl with the Dragon Tattoo      | Stieg Larsson         | mystery     | 2005 |    9.0 | t
       7 | Sapiens                              | Yuval Noah Harari     | non-fiction | 2011 |    9.2 | f
       8 | Educated                             | Tara Westover         | non-fiction | 2018 |    9.4 | t
       9 | The Great Gatsby                     | F. Scott Fitzgerald   | fiction     | 1925 |    8.9 | t
      10 | To Kill a Mockingbird                | Harper Lee            | fiction     | 1960 |    9.5 | f
      11 | Beloved                              | Toni Morrison         | fiction     | 1987 |    9.1 | t
      12 | Project Hail Mary                    | Andy Weir             | sci-fi      | 2021 |    9.6 | t
(12 rows)
```

</details>

<details>

**<summary>2. Select only title and author (12 rows)</summary>**

```
                title                 |        author
--------------------------------------+-----------------------
 The Hitchhiker's Guide to the Galaxy | Douglas Adams
 Dune                                 | Frank Herbert
 The Name of the Wind                 | Patrick Rothfuss
 The Way of Kings                     | Brandon Sanderson
 Gone Girl                            | Gillian Flynn
 The Girl with the Dragon Tattoo      | Stieg Larsson
 Sapiens                              | Yuval Noah Harari
 Educated                             | Tara Westover
 The Great Gatsby                     | F. Scott Fitzgerald
 To Kill a Mockingbird                | Harper Lee
 Beloved                              | Toni Morrison
 Project Hail Mary                    | Andy Weir
(12 rows)
```

</details>

<details>

**<summary>3. Select title, author, and rating (12 rows)</summary>**

```
                title                 |        author         | rating
--------------------------------------+-----------------------+--------
 The Hitchhiker's Guide to the Galaxy | Douglas Adams         |    9.3
 Dune                                 | Frank Herbert         |    9.5
 The Name of the Wind                 | Patrick Rothfuss      |    9.4
 The Way of Kings                     | Brandon Sanderson     |    9.6
 Gone Girl                            | Gillian Flynn         |    8.8
 The Girl with the Dragon Tattoo      | Stieg Larsson         |    9.0
 Sapiens                              | Yuval Noah Harari     |    9.2
 Educated                             | Tara Westover         |    9.4
 The Great Gatsby                     | F. Scott Fitzgerald   |    8.9
 To Kill a Mockingbird                | Harper Lee            |    9.5
 Beloved                              | Toni Morrison         |    9.1
 Project Hail Mary                    | Andy Weir             |    9.6
(12 rows)
```

</details>

<details>

**<summary>4. Sci-fi books (3 rows)</summary>**

```
 book_id |                title                 |    author     | genre  | year | rating | available
---------+--------------------------------------+---------------+--------+------+--------+-----------
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams | sci-fi | 1979 |    9.3 | t
       2 | Dune                                 | Frank Herbert | sci-fi | 1965 |    9.5 | f
      12 | Project Hail Mary                    | Andy Weir     | sci-fi | 2021 |    9.6 | t
(3 rows)
```

</details>

<details>

**<summary>5. Books published after 2000 (7 rows)</summary>**

```
 book_id |              title               |        author      |    genre    | year | rating | available
---------+----------------------------------+--------------------+-------------+------+--------+-----------
       3 | The Name of the Wind             | Patrick Rothfuss   | fantasy     | 2007 |    9.4 | t
       4 | The Way of Kings                 | Brandon Sanderson  | fantasy     | 2010 |    9.6 | f
       5 | Gone Girl                        | Gillian Flynn      | mystery     | 2012 |    8.8 | t
       6 | The Girl with the Dragon Tattoo  | Stieg Larsson      | mystery     | 2005 |    9.0 | t
       7 | Sapiens                          | Yuval Noah Harari  | non-fiction | 2011 |    9.2 | f
       8 | Educated                         | Tara Westover      | non-fiction | 2018 |    9.4 | t
      12 | Project Hail Mary                | Andy Weir          | sci-fi      | 2021 |    9.6 | t
(7 rows)
```

</details>

<details>

**<summary>6. Books with a rating of 9.0 or higher (10 rows)</summary>**

```
 book_id |                title                 |        author      |    genre    | year | rating | available
---------+--------------------------------------+--------------------+-------------+------+--------+-----------
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams      | sci-fi      | 1979 |    9.3 | t
       2 | Dune                                 | Frank Herbert      | sci-fi      | 1965 |    9.5 | f
       3 | The Name of the Wind                 | Patrick Rothfuss   | fantasy     | 2007 |    9.4 | t
       4 | The Way of Kings                     | Brandon Sanderson  | fantasy     | 2010 |    9.6 | f
       6 | The Girl with the Dragon Tattoo      | Stieg Larsson      | mystery     | 2005 |    9.0 | t
       7 | Sapiens                              | Yuval Noah Harari  | non-fiction | 2011 |    9.2 | f
       8 | Educated                             | Tara Westover      | non-fiction | 2018 |    9.4 | t
      10 | To Kill a Mockingbird                | Harper Lee         | fiction     | 1960 |    9.5 | f
      11 | Beloved                              | Toni Morrison      | fiction     | 1987 |    9.1 | t
      12 | Project Hail Mary                    | Andy Weir          | sci-fi      | 2021 |    9.6 | t
(10 rows)
```

</details>

<details>

**<summary>7. Available books (available = TRUE) (8 rows)</summary>**

```
 book_id |                title                 |        author       |    genre    | year | rating | available
---------+--------------------------------------+---------------------+-------------+------+--------+-----------
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams       | sci-fi      | 1979 |    9.3 | t
       3 | The Name of the Wind                 | Patrick Rothfuss    | fantasy     | 2007 |    9.4 | t
       5 | Gone Girl                            | Gillian Flynn       | mystery     | 2012 |    8.8 | t
       6 | The Girl with the Dragon Tattoo      | Stieg Larsson       | mystery     | 2005 |    9.0 | t
       8 | Educated                             | Tara Westover       | non-fiction | 2018 |    9.4 | t
       9 | The Great Gatsby                     | F. Scott Fitzgerald | fiction     | 1925 |    8.9 | t
      11 | Beloved                              | Toni Morrison       | fiction     | 1987 |    9.1 | t
      12 | Project Hail Mary                    | Andy Weir           | sci-fi      | 2021 |    9.6 | t
(8 rows)
```

</details>

<details>

**<summary>8. Checked out books (available = FALSE) (4 rows)</summary>**

```
 book_id |         title         |       author      |    genre    | year | rating | available
---------+-----------------------+-------------------+-------------+------+--------+-----------
       2 | Dune                  | Frank Herbert     | sci-fi      | 1965 |    9.5 | f
       4 | The Way of Kings      | Brandon Sanderson | fantasy     | 2010 |    9.6 | f
       7 | Sapiens               | Yuval Noah Harari | non-fiction | 2011 |    9.2 | f
      10 | To Kill a Mockingbird | Harper Lee        | fiction     | 1960 |    9.5 | f
(4 rows)
```

</details>

<details>

**<summary>9. Books published before 1970 (3 rows)</summary>**

```
 book_id |         title         |        author       |  genre  | year | rating | available
---------+-----------------------+---------------------+---------+------+--------+-----------
       2 | Dune                  | Frank Herbert       | sci-fi  | 1965 |    9.5 | f
       9 | The Great Gatsby      | F. Scott Fitzgerald | fiction | 1925 |    8.9 | t
      10 | To Kill a Mockingbird | Harper Lee          | fiction | 1960 |    9.5 | f
(3 rows)
```

</details>

<details>

**<summary>10. Sci-fi books with a rating above 9.4 (2 rows)</summary>**

```
 book_id |       title       |    author     | genre  | year | rating | available
---------+-------------------+---------------+--------+------+--------+-----------
       2 | Dune              | Frank Herbert | sci-fi | 1965 |    9.5 | f
      12 | Project Hail Mary | Andy Weir     | sci-fi | 2021 |    9.6 | t
(2 rows)
```

</details>

<details>

**<summary>11. Fantasy or mystery books (4 rows)</summary>**

```
 book_id |              title              |      author       |  genre  | year | rating | available
---------+---------------------------------+-------------------+---------+------+--------+-----------
       3 | The Name of the Wind            | Patrick Rothfuss  | fantasy | 2007 |    9.4 | t
       4 | The Way of Kings                | Brandon Sanderson | fantasy | 2010 |    9.6 | f
       5 | Gone Girl                       | Gillian Flynn     | mystery | 2012 |    8.8 | t
       6 | The Girl with the Dragon Tattoo | Stieg Larsson     | mystery | 2005 |    9.0 | t
(4 rows)
```

</details>

<details>

**<summary>12. All books ordered by rating (highest first) (12 rows)</summary>**

Note: rows with the same rating may appear in a different order — that's okay.

```
 book_id |                title                 |       author      |    genre    | year | rating | available
---------+--------------------------------------+-------------------+-------------+------+--------+-----------
       4 | The Way of Kings                     | Brandon Sanderson | fantasy     | 2010 |    9.6 | f
      12 | Project Hail Mary                    | Andy Weir         | sci-fi      | 2021 |    9.6 | t
       2 | Dune                                 | Frank Herbert     | sci-fi      | 1965 |    9.5 | f
      10 | To Kill a Mockingbird                | Harper Lee        | fiction     | 1960 |    9.5 | f
       3 | The Name of the Wind                 | Patrick Rothfuss  | fantasy     | 2007 |    9.4 | t
       8 | Educated                             | Tara Westover     | non-fiction | 2018 |    9.4 | t
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams     | sci-fi      | 1979 |    9.3 | t
       7 | Sapiens                              | Yuval Noah Harari | non-fiction | 2011 |    9.2 | f
      11 | Beloved                              | Toni Morrison     | fiction     | 1987 |    9.1 | t
       6 | The Girl with the Dragon Tattoo      | Stieg Larsson     | mystery     | 2005 |    9.0 | t
       9 | The Great Gatsby                     | F. Scott Fitzgerald | fiction   | 1925 |    8.9 | t
       5 | Gone Girl                            | Gillian Flynn     | mystery     | 2012 |    8.8 | t
(12 rows)
```

</details>

<details>

**<summary>13. All books ordered by year (oldest first) (12 rows)</summary>**

```
 book_id |                title                 |        author       |    genre    | year | rating | available
---------+--------------------------------------+---------------------+-------------+------+--------+-----------
       9 | The Great Gatsby                     | F. Scott Fitzgerald | fiction     | 1925 |    8.9 | t
      10 | To Kill a Mockingbird                | Harper Lee          | fiction     | 1960 |    9.5 | f
       2 | Dune                                 | Frank Herbert       | sci-fi      | 1965 |    9.5 | f
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams       | sci-fi      | 1979 |    9.3 | t
      11 | Beloved                              | Toni Morrison       | fiction     | 1987 |    9.1 | t
       6 | The Girl with the Dragon Tattoo      | Stieg Larsson       | mystery     | 2005 |    9.0 | t
       3 | The Name of the Wind                 | Patrick Rothfuss    | fantasy     | 2007 |    9.4 | t
       4 | The Way of Kings                     | Brandon Sanderson   | fantasy     | 2010 |    9.6 | f
       7 | Sapiens                              | Yuval Noah Harari   | non-fiction | 2011 |    9.2 | f
       5 | Gone Girl                            | Gillian Flynn       | mystery     | 2012 |    8.8 | t
       8 | Educated                             | Tara Westover       | non-fiction | 2018 |    9.4 | t
      12 | Project Hail Mary                    | Andy Weir           | sci-fi      | 2021 |    9.6 | t
(12 rows)
```

</details>

<details>

**<summary>14. Top 5 highest-rated books (5 rows)</summary>**

Note: rows with the same rating may appear in a different order — that's okay.

```
 book_id |          title          |       author      |    genre    | year | rating | available
---------+-------------------------+-------------------+-------------+------+--------+-----------
       4 | The Way of Kings        | Brandon Sanderson | fantasy     | 2010 |    9.6 | f
      12 | Project Hail Mary       | Andy Weir         | sci-fi      | 2021 |    9.6 | t
       2 | Dune                    | Frank Herbert     | sci-fi      | 1965 |    9.5 | f
      10 | To Kill a Mockingbird   | Harper Lee        | fiction     | 1960 |    9.5 | f
       3 | The Name of the Wind    | Patrick Rothfuss  | fantasy     | 2007 |    9.4 | t
(5 rows)
```

</details>

<details>

**<summary>15. 3 most recently published books (3 rows)</summary>**

```
 book_id |       title       |     author     |    genre    | year | rating | available
---------+-------------------+----------------+-------------+------+--------+-----------
      12 | Project Hail Mary | Andy Weir      | sci-fi      | 2021 |    9.6 | t
       8 | Educated          | Tara Westover  | non-fiction | 2018 |    9.4 | t
       5 | Gone Girl         | Gillian Flynn  | mystery     | 2012 |    8.8 | t
(3 rows)
```

</details>

<details>

**<summary>16. Fiction books ordered by year (oldest first) (3 rows)</summary>**

```
 book_id |         title         |        author       |  genre  | year | rating | available
---------+-----------------------+---------------------+---------+------+--------+-----------
       9 | The Great Gatsby      | F. Scott Fitzgerald | fiction | 1925 |    8.9 | t
      10 | To Kill a Mockingbird | Harper Lee          | fiction | 1960 |    9.5 | f
      11 | Beloved               | Toni Morrison       | fiction | 1987 |    9.1 | t
(3 rows)
```

</details>

<details>

**<summary>17. Available books rated 9.0+, ordered by rating (6 rows)</summary>**

```
 book_id |                title                 |      author      |    genre    | year | rating | available
---------+--------------------------------------+------------------+-------------+------+--------+-----------
      12 | Project Hail Mary                    | Andy Weir        | sci-fi      | 2021 |    9.6 | t
       3 | The Name of the Wind                 | Patrick Rothfuss | fantasy     | 2007 |    9.4 | t
       8 | Educated                             | Tara Westover    | non-fiction | 2018 |    9.4 | t
       1 | The Hitchhiker's Guide to the Galaxy | Douglas Adams    | sci-fi      | 1979 |    9.3 | t
      11 | Beloved                              | Toni Morrison    | fiction     | 1987 |    9.1 | t
       6 | The Girl with the Dragon Tattoo      | Stieg Larsson    | mystery     | 2005 |    9.0 | t
(6 rows)
```

</details>

<details>

**<summary>18. Title and genre of the 3 oldest books (3 rows)</summary>**

```
         title         |  genre
-----------------------+---------
 The Great Gatsby      | fiction
 To Kill a Mockingbird | fiction
 Dune                  | sci-fi
(3 rows)
```

</details>

<details>

**<summary>19 & 20. After inserting a new book</summary>**

Your output will differ based on the book you chose. You should see 13 rows total, with your new book appearing at the end with `book_id = 13` and `available = t`.

</details>

<details>

**<summary>21 & 22. After updating</summary>**

- Query 21: `UPDATE 1` — confirms one row was updated. Your inserted book should now show `available = f`.
- Query 22: `UPDATE 1` — confirms one row was updated. Project Hail Mary should now show `rating = 9.7`.

</details>

<details>

**<summary>23 & 24. After deleting book_id = 5 (Gone Girl)</summary>**

- Query 23: `DELETE 1` — confirms one row was deleted.
- Query 24: 11 rows remain (your inserted book = 13 rows, minus the deleted book = 12... but wait, you also inserted one in #19). You should see your inserted book in the results, but Gone Girl (book_id 5) should be gone.

</details>
