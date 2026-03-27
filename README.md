# swe-6-1-sql-basics

This assignment covers **Intro to Databases** and **Intro to SQL**. You'll practice reading and writing SQL queries against a pre-built `books_db` database — no JavaScript involved.

- [Setup](#setup)
- [Grading](#grading)
  - [Part 1: SELECT — Basic Queries (3 pts)](#part-1-select--basic-queries-3-pts)
  - [Part 2: WHERE — Filtering Data (8 pts)](#part-2-where--filtering-data-8-pts)
  - [Part 3: ORDER BY and LIMIT — Sorting and Slicing (7 pts)](#part-3-order-by-and-limit--sorting-and-slicing-7-pts)
  - [Part 4: INSERT — Creating Data (2 pts)](#part-4-insert--creating-data-2-pts)
  - [Part 5: UPDATE — Modifying Data (2 pts)](#part-5-update--modifying-data-2-pts)
  - [Part 6: DELETE — Removing Data (2 pts)](#part-6-delete--removing-data-2-pts)
- [Expected Output](#expected-output)

## Setup

**1. Clone this repo and navigate into it.**

**2. Make a draft branch**

```sh
git checkout -b draft
```

**3. Run the seed file to create and populate `books_db`:**

**Mac:**
```sh
psql -f setup.sql
```

**Windows/WSL:**
```sh
sudo -u postgres psql -f setup.sql
```

**4. Connect to the database:**

**Mac:**
```sh
psql books_db
```

**Windows/WSL:**
```sh
sudo -u postgres psql books_db
```

**5. Open `queries.sql`** and write your answer below each prompt. You can run queries in `psql` directly, or open the file in TablePlus and run queries from there.

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
- [ ] 7. Select all available books
- [ ] 8. Select all unavailable books
- [ ] 9. Select all books published before `1970`
- [ ] 10. Select all `'sci-fi'` books with a rating above `9.4`
- [ ] 11. Select all books in the `'fantasy'` or `'mystery'` genre

### Part 3: ORDER BY and LIMIT — Sorting and Slicing (7 pts)

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

**<details><summary>1. Select all columns from all books (12 rows)</summary>**

| book_id | title                                | author              | genre       | year | rating | available |
| ------- | ------------------------------------ | ------------------- | ----------- | ---- | ------ | --------- |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams       | sci-fi      | 1979 | 9.3    | true      |
| 2       | Dune                                 | Frank Herbert       | sci-fi      | 1965 | 9.5    | false     |
| 3       | The Name of the Wind                 | Patrick Rothfuss    | fantasy     | 2007 | 9.4    | true      |
| 4       | The Way of Kings                     | Brandon Sanderson   | fantasy     | 2010 | 9.6    | false     |
| 5       | Gone Girl                            | Gillian Flynn       | mystery     | 2012 | 8.8    | true      |
| 6       | The Girl with the Dragon Tattoo      | Stieg Larsson       | mystery     | 2005 | 9.0    | true      |
| 7       | Sapiens                              | Yuval Noah Harari   | non-fiction | 2011 | 9.2    | false     |
| 8       | Educated                             | Tara Westover       | non-fiction | 2018 | 9.4    | true      |
| 9       | The Great Gatsby                     | F. Scott Fitzgerald | fiction     | 1925 | 8.9    | true      |
| 10      | To Kill a Mockingbird                | Harper Lee          | fiction     | 1960 | 9.5    | false     |
| 11      | Beloved                              | Toni Morrison       | fiction     | 1987 | 9.1    | true      |
| 12      | Project Hail Mary                    | Andy Weir           | sci-fi      | 2021 | 9.6    | true      |

</details>

**<details><summary>2. Select only title and author (12 rows)</summary>**

| title                                | author              |
| ------------------------------------ | ------------------- |
| The Hitchhiker's Guide to the Galaxy | Douglas Adams       |
| Dune                                 | Frank Herbert       |
| The Name of the Wind                 | Patrick Rothfuss    |
| The Way of Kings                     | Brandon Sanderson   |
| Gone Girl                            | Gillian Flynn       |
| The Girl with the Dragon Tattoo      | Stieg Larsson       |
| Sapiens                              | Yuval Noah Harari   |
| Educated                             | Tara Westover       |
| The Great Gatsby                     | F. Scott Fitzgerald |
| To Kill a Mockingbird                | Harper Lee          |
| Beloved                              | Toni Morrison       |
| Project Hail Mary                    | Andy Weir           |

</details>

**<details><summary>3. Select title, author, and rating (12 rows)</summary>**

| title                                | author              | rating |
| ------------------------------------ | ------------------- | ------ |
| The Hitchhiker's Guide to the Galaxy | Douglas Adams       | 9.3    |
| Dune                                 | Frank Herbert       | 9.5    |
| The Name of the Wind                 | Patrick Rothfuss    | 9.4    |
| The Way of Kings                     | Brandon Sanderson   | 9.6    |
| Gone Girl                            | Gillian Flynn       | 8.8    |
| The Girl with the Dragon Tattoo      | Stieg Larsson       | 9.0    |
| Sapiens                              | Yuval Noah Harari   | 9.2    |
| Educated                             | Tara Westover       | 9.4    |
| The Great Gatsby                     | F. Scott Fitzgerald | 8.9    |
| To Kill a Mockingbird                | Harper Lee          | 9.5    |
| Beloved                              | Toni Morrison       | 9.1    |
| Project Hail Mary                    | Andy Weir           | 9.6    |

</details>

**<details><summary>4. Sci-fi books (3 rows)</summary>**

| book_id | title                                | author        | genre  | year | rating | available |
| ------- | ------------------------------------ | ------------- | ------ | ---- | ------ | --------- |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams | sci-fi | 1979 | 9.3    | true      |
| 2       | Dune                                 | Frank Herbert | sci-fi | 1965 | 9.5    | false     |
| 12      | Project Hail Mary                    | Andy Weir     | sci-fi | 2021 | 9.6    | true      |

</details>

**<details><summary>5. Books published after 2000 (7 rows)</summary>**

| book_id | title                           | author            | genre       | year | rating | available |
| ------- | ------------------------------- | ----------------- | ----------- | ---- | ------ | --------- |
| 3       | The Name of the Wind            | Patrick Rothfuss  | fantasy     | 2007 | 9.4    | true      |
| 4       | The Way of Kings                | Brandon Sanderson | fantasy     | 2010 | 9.6    | false     |
| 5       | Gone Girl                       | Gillian Flynn     | mystery     | 2012 | 8.8    | true      |
| 6       | The Girl with the Dragon Tattoo | Stieg Larsson     | mystery     | 2005 | 9.0    | true      |
| 7       | Sapiens                         | Yuval Noah Harari | non-fiction | 2011 | 9.2    | false     |
| 8       | Educated                        | Tara Westover     | non-fiction | 2018 | 9.4    | true      |
| 12      | Project Hail Mary               | Andy Weir         | sci-fi      | 2021 | 9.6    | true      |

</details>

**<details><summary>6. Books with a rating of 9.0 or higher (10 rows)</summary>**

| book_id | title                                | author            | genre       | year | rating | available |
| ------- | ------------------------------------ | ----------------- | ----------- | ---- | ------ | --------- |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams     | sci-fi      | 1979 | 9.3    | true      |
| 2       | Dune                                 | Frank Herbert     | sci-fi      | 1965 | 9.5    | false     |
| 3       | The Name of the Wind                 | Patrick Rothfuss  | fantasy     | 2007 | 9.4    | true      |
| 4       | The Way of Kings                     | Brandon Sanderson | fantasy     | 2010 | 9.6    | false     |
| 6       | The Girl with the Dragon Tattoo      | Stieg Larsson     | mystery     | 2005 | 9.0    | true      |
| 7       | Sapiens                              | Yuval Noah Harari | non-fiction | 2011 | 9.2    | false     |
| 8       | Educated                             | Tara Westover     | non-fiction | 2018 | 9.4    | true      |
| 10      | To Kill a Mockingbird                | Harper Lee        | fiction     | 1960 | 9.5    | false     |
| 11      | Beloved                              | Toni Morrison     | fiction     | 1987 | 9.1    | true      |
| 12      | Project Hail Mary                    | Andy Weir         | sci-fi      | 2021 | 9.6    | true      |

</details>

**<details><summary>7. Available books (8 rows)</summary>**

| book_id | title                                | author              | genre       | year | rating | available |
| ------- | ------------------------------------ | ------------------- | ----------- | ---- | ------ | --------- |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams       | sci-fi      | 1979 | 9.3    | true      |
| 3       | The Name of the Wind                 | Patrick Rothfuss    | fantasy     | 2007 | 9.4    | true      |
| 5       | Gone Girl                            | Gillian Flynn       | mystery     | 2012 | 8.8    | true      |
| 6       | The Girl with the Dragon Tattoo      | Stieg Larsson       | mystery     | 2005 | 9.0    | true      |
| 8       | Educated                             | Tara Westover       | non-fiction | 2018 | 9.4    | true      |
| 9       | The Great Gatsby                     | F. Scott Fitzgerald | fiction     | 1925 | 8.9    | true      |
| 11      | Beloved                              | Toni Morrison       | fiction     | 1987 | 9.1    | true      |
| 12      | Project Hail Mary                    | Andy Weir           | sci-fi      | 2021 | 9.6    | true      |

</details>

**<details><summary>8. Unavailable books (4 rows)</summary>**

| book_id | title                 | author            | genre       | year | rating | available |
| ------- | --------------------- | ----------------- | ----------- | ---- | ------ | --------- |
| 2       | Dune                  | Frank Herbert     | sci-fi      | 1965 | 9.5    | false     |
| 4       | The Way of Kings      | Brandon Sanderson | fantasy     | 2010 | 9.6    | false     |
| 7       | Sapiens               | Yuval Noah Harari | non-fiction | 2011 | 9.2    | false     |
| 10      | To Kill a Mockingbird | Harper Lee        | fiction     | 1960 | 9.5    | false     |

</details>

**<details><summary>9. Books published before 1970 (3 rows)</summary>**

| book_id | title                 | author              | genre   | year | rating | available |
| ------- | --------------------- | ------------------- | ------- | ---- | ------ | --------- |
| 2       | Dune                  | Frank Herbert       | sci-fi  | 1965 | 9.5    | false     |
| 9       | The Great Gatsby      | F. Scott Fitzgerald | fiction | 1925 | 8.9    | true      |
| 10      | To Kill a Mockingbird | Harper Lee          | fiction | 1960 | 9.5    | false     |

</details>

**<details><summary>10. Sci-fi books with a rating above 9.4 (2 rows)</summary>**

| book_id | title             | author        | genre  | year | rating | available |
| ------- | ----------------- | ------------- | ------ | ---- | ------ | --------- |
| 2       | Dune              | Frank Herbert | sci-fi | 1965 | 9.5    | false     |
| 12      | Project Hail Mary | Andy Weir     | sci-fi | 2021 | 9.6    | true      |

</details>

**<details><summary>11. Fantasy or mystery books (4 rows)</summary>**

| book_id | title                           | author            | genre   | year | rating | available |
| ------- | ------------------------------- | ----------------- | ------- | ---- | ------ | --------- |
| 3       | The Name of the Wind            | Patrick Rothfuss  | fantasy | 2007 | 9.4    | true      |
| 4       | The Way of Kings                | Brandon Sanderson | fantasy | 2010 | 9.6    | false     |
| 5       | Gone Girl                       | Gillian Flynn     | mystery | 2012 | 8.8    | true      |
| 6       | The Girl with the Dragon Tattoo | Stieg Larsson     | mystery | 2005 | 9.0    | true      |

</details>

**<details><summary>12. All books ordered by rating highest to lowest (12 rows)</summary>**

Note: rows with the same rating may appear in a different order — that's okay.

| book_id | title                                | author              | genre       | year | rating | available |
| ------- | ------------------------------------ | ------------------- | ----------- | ---- | ------ | --------- |
| 4       | The Way of Kings                     | Brandon Sanderson   | fantasy     | 2010 | 9.6    | false     |
| 12      | Project Hail Mary                    | Andy Weir           | sci-fi      | 2021 | 9.6    | true      |
| 2       | Dune                                 | Frank Herbert       | sci-fi      | 1965 | 9.5    | false     |
| 10      | To Kill a Mockingbird                | Harper Lee          | fiction     | 1960 | 9.5    | false     |
| 3       | The Name of the Wind                 | Patrick Rothfuss    | fantasy     | 2007 | 9.4    | true      |
| 8       | Educated                             | Tara Westover       | non-fiction | 2018 | 9.4    | true      |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams       | sci-fi      | 1979 | 9.3    | true      |
| 7       | Sapiens                              | Yuval Noah Harari   | non-fiction | 2011 | 9.2    | false     |
| 11      | Beloved                              | Toni Morrison       | fiction     | 1987 | 9.1    | true      |
| 6       | The Girl with the Dragon Tattoo      | Stieg Larsson       | mystery     | 2005 | 9.0    | true      |
| 9       | The Great Gatsby                     | F. Scott Fitzgerald | fiction     | 1925 | 8.9    | true      |
| 5       | Gone Girl                            | Gillian Flynn       | mystery     | 2012 | 8.8    | true      |

</details>

**<details><summary>13. All books ordered by year oldest to newest (12 rows)</summary>**

| book_id | title                                | author              | genre       | year | rating | available |
| ------- | ------------------------------------ | ------------------- | ----------- | ---- | ------ | --------- |
| 9       | The Great Gatsby                     | F. Scott Fitzgerald | fiction     | 1925 | 8.9    | true      |
| 10      | To Kill a Mockingbird                | Harper Lee          | fiction     | 1960 | 9.5    | false     |
| 2       | Dune                                 | Frank Herbert       | sci-fi      | 1965 | 9.5    | false     |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams       | sci-fi      | 1979 | 9.3    | true      |
| 11      | Beloved                              | Toni Morrison       | fiction     | 1987 | 9.1    | true      |
| 6       | The Girl with the Dragon Tattoo      | Stieg Larsson       | mystery     | 2005 | 9.0    | true      |
| 3       | The Name of the Wind                 | Patrick Rothfuss    | fantasy     | 2007 | 9.4    | true      |
| 4       | The Way of Kings                     | Brandon Sanderson   | fantasy     | 2010 | 9.6    | false     |
| 7       | Sapiens                              | Yuval Noah Harari   | non-fiction | 2011 | 9.2    | false     |
| 5       | Gone Girl                            | Gillian Flynn       | mystery     | 2012 | 8.8    | true      |
| 8       | Educated                             | Tara Westover       | non-fiction | 2018 | 9.4    | true      |
| 12      | Project Hail Mary                    | Andy Weir           | sci-fi      | 2021 | 9.6    | true      |

</details>

**<details><summary>14. Top 5 highest-rated books (5 rows)</summary>**

Note: rows with the same rating may appear in a different order — that's okay.

| book_id | title                 | author            | genre   | year | rating | available |
| ------- | --------------------- | ----------------- | ------- | ---- | ------ | --------- |
| 4       | The Way of Kings      | Brandon Sanderson | fantasy | 2010 | 9.6    | false     |
| 12      | Project Hail Mary     | Andy Weir         | sci-fi  | 2021 | 9.6    | true      |
| 2       | Dune                  | Frank Herbert     | sci-fi  | 1965 | 9.5    | false     |
| 10      | To Kill a Mockingbird | Harper Lee        | fiction | 1960 | 9.5    | false     |
| 3       | The Name of the Wind  | Patrick Rothfuss  | fantasy | 2007 | 9.4    | true      |

</details>

**<details><summary>15. 3 most recently published books (3 rows)</summary>**

| book_id | title             | author        | genre       | year | rating | available |
| ------- | ----------------- | ------------- | ----------- | ---- | ------ | --------- |
| 12      | Project Hail Mary | Andy Weir     | sci-fi      | 2021 | 9.6    | true      |
| 8       | Educated          | Tara Westover | non-fiction | 2018 | 9.4    | true      |
| 5       | Gone Girl         | Gillian Flynn | mystery     | 2012 | 8.8    | true      |

</details>

**<details><summary>16. Fiction books ordered by year oldest to newest (3 rows)</summary>**

| book_id | title                 | author              | genre   | year | rating | available |
| ------- | --------------------- | ------------------- | ------- | ---- | ------ | --------- |
| 9       | The Great Gatsby      | F. Scott Fitzgerald | fiction | 1925 | 8.9    | true      |
| 10      | To Kill a Mockingbird | Harper Lee          | fiction | 1960 | 9.5    | false     |
| 11      | Beloved               | Toni Morrison       | fiction | 1987 | 9.1    | true      |

</details>

**<details><summary>17. Available books rated 9.0 or higher, ordered by rating (6 rows)</summary>**

| book_id | title                                | author           | genre       | year | rating | available |
| ------- | ------------------------------------ | ---------------- | ----------- | ---- | ------ | --------- |
| 12      | Project Hail Mary                    | Andy Weir        | sci-fi      | 2021 | 9.6    | true      |
| 3       | The Name of the Wind                 | Patrick Rothfuss | fantasy     | 2007 | 9.4    | true      |
| 8       | Educated                             | Tara Westover    | non-fiction | 2018 | 9.4    | true      |
| 1       | The Hitchhiker's Guide to the Galaxy | Douglas Adams    | sci-fi      | 1979 | 9.3    | true      |
| 11      | Beloved                              | Toni Morrison    | fiction     | 1987 | 9.1    | true      |
| 6       | The Girl with the Dragon Tattoo      | Stieg Larsson    | mystery     | 2005 | 9.0    | true      |

</details>

**<details><summary>18. Title and genre of the 3 oldest books (3 rows)</summary>**

| title                 | genre   |
| --------------------- | ------- |
| The Great Gatsby      | fiction |
| To Kill a Mockingbird | fiction |
| Dune                  | sci-fi  |

</details>

**<details><summary>19 and 20. After inserting a new book</summary>**

Your output will differ based on the book you chose. You should see 13 rows total, with your new book appearing at the end with `book_id = 13` and `available = true`.

</details>

**<details><summary>21 and 22. After updating</summary>**

- Query 21: `UPDATE 1` — confirms one row was updated. Your inserted book should now show `available = false`.
- Query 22: `UPDATE 1` — confirms one row was updated. Project Hail Mary should now show `rating = 9.7`.

</details>

**<details><summary>23 and 24. After deleting book_id = 5</summary>**

- Query 23: `DELETE 1` — confirms one row was deleted.
- Query 24: You should see your inserted book in the results, but Gone Girl (`book_id = 5`) should be gone.

</details>
