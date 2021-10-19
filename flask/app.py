import os
from flask import Flask, render_template
from bokeh.embed import server_document

app = Flask(__name__)
url = os.environ['BOKEH_URL']


@app.route('/')
def index():

    global url
    url_path = str(url) + "/sliders"
    script = server_document(url_path)
    return render_template('index.html', bokeh_script=script)
