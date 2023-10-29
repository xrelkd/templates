from io import BytesIO

import requests
from flask import Flask, Response, send_file
from PIL import Image

app = Flask(__name__)

IMAGE_URL = "https://github.com/fluidicon.png"
IMAGE_SIZE = (200, 200)


@app.route("/")
def hello() -> str:
    return "Hello World!"


@app.route("/image")
def image() -> Response:
    resp = requests.get(IMAGE_URL)
    if not resp.status_code == 200:
        raise ValueError(f"Response code was '{resp.status_code}'")

    img_io = BytesIO()

    img = Image.open(BytesIO(resp.content))
    img.thumbnail(IMAGE_SIZE)
    img.save(img_io, "PNG", quality=70)

    img_io.seek(0)

    return send_file(img_io, mimetype="image/png")


def run_cli() -> None:
    app.run()
