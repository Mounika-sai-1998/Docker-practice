FROM python:alpine as firststage
WORKDIR /myapp
COPY requirements.txt .
RUN pip install -r requirements.txt


FROM firststage as final
RUN pip install -r requirement --production
COPY . .
CMD ["python" , "app.py"]
