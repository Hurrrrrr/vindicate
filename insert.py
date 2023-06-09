import sqlite3
import os

db_file = "catalog.db"

if os.path.exists(db_file):
    os.remove(db_file)

try:
    with open("catalog.sql", "r") as sql_file:
        sql_script = sql_file.read()

    conn = sqlite3.connect(db_file)
    c = conn.cursor()
    c.executescript(sql_script)

finally:
    conn.close()