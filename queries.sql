-- queries.sql
-- Write your SQL query below each prompt.
--
-- Setup: run the seed file first to create books_db.
--   Mac:       psql -f setup.sql
--   WSL:       sudo -u postgres psql -f setup.sql
--
-- Then connect to the database:
--   Mac:       psql books_db
--   WSL:       sudo -u postgres psql books_db
--
-- You can also open this file in TablePlus and run queries from there.

-- ============================================================
-- Part 1: SELECT — Reading Data
-- ============================================================

-- 1. Select all columns from all books.


-- 2. Select only the title and author for all books.


-- 3. Select the title, author, and rating for all books.


-- ============================================================
-- Part 2: WHERE — Filtering Data
-- ============================================================

-- 4. Select all books in the 'sci-fi' genre.


-- 5. Select all books published after the year 2000.


-- 6. Select all books with a rating of 9.0 or higher.


-- 7. Select all books that are currently available (available = TRUE).


-- 8. Select all books that are currently checked out (available = FALSE).


-- 9. Select all books published before 1970.


-- 10. Select all 'sci-fi' books with a rating above 9.4. (Use AND)


-- 11. Select all books in the 'fantasy' or 'mystery' genre. (Use OR)


-- ============================================================
-- Part 3: ORDER BY & LIMIT — Sorting and Slicing
-- ============================================================

-- 12. Select all books, ordered by rating from highest to lowest.


-- 13. Select all books, ordered by year from oldest to newest.


-- 14. Select the 5 highest-rated books.


-- 15. Select the 3 most recently published books.


-- 16. Select all 'fiction' books, ordered by year from oldest to newest.


-- 17. Select all available books with a rating of 9.0 or higher,
--     ordered by rating from highest to lowest.


-- 18. Select the title and genre of the 3 oldest books.


-- ============================================================
-- Part 4: INSERT — Creating Data
-- ============================================================

-- 19. Insert a new book of your choice into the books table.
--     Include: title, author, genre, year, rating.
--     (available defaults to TRUE if not provided)


-- 20. Select all books to verify your insert.


-- ============================================================
-- Part 5: UPDATE — Modifying Data
-- ============================================================

-- 21. Mark the book you inserted in #19 as unavailable (available = FALSE).
--     Use its book_id to target it specifically.


-- 22. Update the rating of 'Project Hail Mary' to 9.7.


-- ============================================================
-- Part 6: DELETE — Removing Data
-- ============================================================

-- 23. Delete the book with book_id = 5.


-- 24. Select all books to verify the deletion.
