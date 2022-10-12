from flask import Flask, request

server = Flask(__name__)


@server.route("/")
def start_server():
    return "You are calling me from"


if __name__ == "__main__":
    server.run(host="0.0.0.0", port=3234)
