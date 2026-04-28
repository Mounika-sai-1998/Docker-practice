from flask import Flask, render_template, request

app = Flask(__name__)

movies = [
    {"name": "Avengers", "time": "10:00 AM", "price": 150},
    {"name": "Inception", "time": "1:30 PM", "price": 200},
    {"name": "Interstellar", "time": "6:00 PM", "price": 250}
]

@app.route('/', methods=['GET', 'POST'])
def home():
    ticket = None

    if request.method == 'POST':
        movie_index = int(request.form['movie'])
        seats = int(request.form['seats'])

        movie = movies[movie_index]
        total = movie['price'] * seats

        ticket = {
            "movie": movie['name'],
            "time": movie['time'],
            "seats": seats,
            "total": total
        }

    return render_template('index.html', movies=movies, ticket=ticket)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
