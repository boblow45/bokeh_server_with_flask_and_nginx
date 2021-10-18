# FROM continuumio/miniconda3:latest

# RUN mkdir -p /app
# WORKDIR /app

# RUN conda create -y --name bokeh python=3 bokeh

# # activate the bokeh environment
# ENV PATH /opt/conda/envs/bokeh/bin:$PATH

# EXPOSE 5006

# ENTRYPOINT ["bokeh", "serve"]


FROM python:latest

RUN mkdir -p /app
WORKDIR /app

RUN pip install bokeh && pip install numpy

# activate the bokeh environment
# ENV PATH /opt/conda/envs/bokeh/bin:$PATH

EXPOSE 5006

ENTRYPOINT ["bokeh", "serve"]
