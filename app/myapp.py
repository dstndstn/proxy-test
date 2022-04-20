from flask import Flask

app = Flask(__name__)

@app.route("/<stuff>")
def hello_world(stuff):
    return '' + str(stuff)

if __name__ == '__main__':
    app.run()
