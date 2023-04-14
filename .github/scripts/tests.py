import psycopg2

# Connect to the database
conn = psycopg2.connect(
    host='rds.c81cqfeexlfz.ap-southeast-1.rds.amazonaws.com',
    dbname='rdspgdev001',
    user='dev_user',
    password='dev_password'
)

# Run some tests
cursor = conn.cursor()
cursor.execute('SELECT * FROM do4m_table;')
result = cursor.fetchall()
assert len(result) == 3
print('All tests passed!')
