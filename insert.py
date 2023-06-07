import sqlite3

try:
    with open("catalog.sql", "r") as sql_file:
        sql_script = sql_file.read()

    conn = sqlite3.connect("catalog.db")
    c = conn.cursor()
    c.executescript(sql_script)

finally:
    conn.close()