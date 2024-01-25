FROM python:3.11

WORKDIR /usr/src/app

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 80

CMD ["python", "app.py"]
