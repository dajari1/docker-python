FROM python:alpine
 
ADD . /app
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5007
 
CMD ["python", "app.py"]