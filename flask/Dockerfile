# FROM continuumio/miniconda3:latest

# ADD . /app
# WORKDIR /app

# # Add conda-forge to get uwsgi
# RUN conda config --add channels conda-forge && \
#     conda create -y -n flask python=3 flask=0.11.1 bokeh uwsgi

# # activate the flask environment
# ENV PATH /opt/conda/envs/flask/bin:$PATH

FROM python:3.9.7

ADD . /app
WORKDIR /app

RUN pip install bokeh==2.4.1 && pip install flask==0.11.1 && pip install uwsgi==2.0.20
