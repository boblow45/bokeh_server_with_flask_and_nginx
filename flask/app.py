import os
from flask import Flask, render_template
from bokeh.embed import server_document

app = Flask(__name__)
url = os.environ['BOKEH_URL']


@app.route('/')
def index():
    script = server_document(model=None, url=url, app_path="/sliders")
    return render_template('index.html', bokeh_script=script)
