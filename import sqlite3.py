import sqlite3

# Question 1 

connection = sqlite3.connect("movies.db")

cursor = connection.cursor()

cursor.execute("SELECT * FROM movies")

movies = cursor.fetchall()

for movie in movies:

    print(movie)

connection.close()

# Question 2 

connection = sqlite3.connect("movies.db")

cursor = connection.cursor()

movie_search = input("Enter a movie name or part of the name: ")

cursor.execute(

    "SELECT * FROM movies WHERE movie_name LIKE ?",

    ("%" + movie_search + "%",)

)

movies = cursor.fetchall()

for movie in movies:

    print(movie)

connection.close()

# Question 3 

connection = sqlite3.connect("movies.db")

cursor = connection.cursor()

movie_name = input("Enter movie name: ")

genre = input("Enter genre: ")

country = input("Enter country: ")

language = input("Enter language: ")

year = int(input("Enter release year: "))

revenue = float(input("Enter revenue: "))

cursor.execute(

    """

    INSERT INTO movies

    (movie_name, genre, country, language, year, revenue)

    VALUES (?, ?, ?, ?, ?, ?)

    """,

    (movie_name, genre, country, language, year, revenue)

)

connection.commit()

print("Movie added successfully")
connection.close()