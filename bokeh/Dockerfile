FROM python:3.9.7

RUN mkdir -p /app
WORKDIR /app

RUN pip install bokeh==2.4.1 && pip install numpy==1.21.2

EXPOSE ${BK_PORT}

ENTRYPOINT ["bokeh", "serve"]
