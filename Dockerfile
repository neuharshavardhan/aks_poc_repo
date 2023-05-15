FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
ENV export FLASK_DEBUG=0
EXPOSE 5000
ENTRYPOINT ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]