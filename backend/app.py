from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Backend is running successfully!"

@app.route("/health")
def health():
    return {"status": "healthy"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
