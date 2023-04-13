import psycopg2

# Connect to the database
conn = psycopg2.connect(
    host='localhost',
    dbname='do4mdb',
    user='do4muser',
    password='do4mpassword'
)

# Run some tests
cursor = conn.cursor()
cursor.execute('SELECT * FROM do4m_table;')
result = cursor.fetchall()
assert len(result) == 3
print('All tests passed!')
