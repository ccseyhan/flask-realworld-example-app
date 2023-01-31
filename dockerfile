FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements/prod.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "python" ]
CMD [ "autoapp.py" ]
