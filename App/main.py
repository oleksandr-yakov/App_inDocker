from flask import Flask, request, render_template

server = Flask(__name__, template_folder="www")


@server.route("/")
def start_server():
    return render_template("index.html")
    #return "You are calling me from" + request.remote_addr + "\n"


if __name__ == "__main__":
    server.run(host="0.0.0.0", port=3294)
