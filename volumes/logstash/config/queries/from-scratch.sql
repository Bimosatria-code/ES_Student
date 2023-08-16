-- SELECT * FROM books.books

SELECT *, UNIX_TIMESTAMP(modification_time) AS unix_ts_in_secs FROM books WHERE (UNIX_TIMESTAMP(modification_time) > :sql_last_value) ORDER BY modification_time ASC