FROM python: 3.11.7
COPY ./app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --worker4 --bind 0.0.0.0:$PORT app:app 