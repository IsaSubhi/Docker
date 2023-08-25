FROM python:latest
WORKDIR /pyapp
COPY ./app/requirements.txt ./app/py.py /pyapp
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

