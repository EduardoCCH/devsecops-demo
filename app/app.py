#Servidor web básico en Python con Flask que es un microframework para crear aplicaciones web con Python.
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hola desde DevSecOps en Azure'

if __name__ 'main':
    app.run(host:'0.0.0.0', port=5000)
