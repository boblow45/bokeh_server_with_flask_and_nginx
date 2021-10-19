# FROM continuumio/miniconda3:latest

# RUN mkdir -p /app
# WORKDIR /app

# RUN conda create -y --name bokeh python=3 bokeh

# # activate the bokeh environment
# ENV PATH /opt/conda/envs/bokeh/bin:$PATH

# EXPOSE 5006

# ENTRYPOINT ["bokeh", "serve"]


FROM python:3.9.7

RUN mkdir -p /app
WORKDIR /app

RUN pip install bokeh==2.4.1 && pip install numpy==1.21.2

# activate the bokeh environment
# ENV PATH /opt/conda/envs/bokeh/bin:$PATH

EXPOSE 5006

ENTRYPOINT ["bokeh", "serve"]
