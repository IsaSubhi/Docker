from flask import Flask, request
import requests

app = Flask(__name__)

@app.route('/')
def index():
    response = requests.get('https://example.com')
    return response.text

if __name__ == '__main__':
    app.run()

