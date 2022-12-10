# make a dockerfile for this

FROM python:3.8
WORKDIR /insurance
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask","run"]
