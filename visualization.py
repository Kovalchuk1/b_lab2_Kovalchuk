import psycopg2
import matplotlib.pyplot as plt

username = 'postgres'
password = 'lila****'
database = 'channels'
host = 'localhost'
port = '5432'

query_1 = '''
select country_name, count(id_country) as Кількість from channel
join country using(id_country)
group by country_name
'''

query_2 = '''
select genre_name, count(id_genre) as Кількість from channel
join genre using(id_genre)
group by genre_name
'''

query_3 = '''
select ch_name, views_v from channel
join viewss using(id_views)
where views_v >= (select  avg(views_v) from  viewss)
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
x = []
y = []


with conn:
    print("Database opened successfully")
    cur = conn.cursor()
    cur.execute(query_1)
    for row in cur:
        x.append(row[0])
        y.append(row[1])
    plt.bar(x, y, width=0.1, alpha=0.6, color='yellow', edgecolor="k", linewidth=2)
    plt.ylabel('Number of channels')
    plt.title('Number of channels in each country')
    plt.show()

    x.clear()
    y.clear()
    cur.execute(query_2)
    for row in cur:
        x.append(row[0])
        y.append(row[1])
    plt.pie(y, labels=x, shadow=True, autopct='%1.1f%%', startangle=180)
    plt.title('The number of channels belongs to a certain genre')
    plt.show()

    x.clear()
    y.clear()
    cur.execute(query_3)
    for row in cur:
        y.append(row[1])
        x.append(row[0])
    plt.bar(x, y, color='yellow', edgecolor="k")
    plt.ylabel('Number of views')
    plt.title('Channel views that are greater than the average number of views of all channels')
    plt.show()
