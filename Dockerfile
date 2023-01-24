FROM python:3.6
WORKDIR /home/app/
RUN pip install --no-cache-dir -r requirements.txt 
COPY ./App/ .
EXPOSE 3294
CMD ["python3","/home/app/main.py"]
