FROM continuumio/miniconda3:latest

ADD . /app
WORKDIR /app

# Add conda-forge to get uwsgi
RUN conda config --add channels conda-forge && \
    conda create -y -n flask python=3 flask=0.11.1 bokeh uwsgi

# activate the flask environment
ENV PATH /opt/conda/envs/flask/bin:$PATH
