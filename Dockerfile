FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

RUN mkdir src
RUN mkdir app

WORKDIR /src/app

COPY ./requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 7860

CMD [ "python3", "app.py" ]
