#!/bin/bash
mkdir -p tempdir/www

cp ./main.py tempdir/.
cp -r www/* tempdir/www/.

echo "FROM python" > tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY ./www /home/app/www" >> tempdir/Dockerfile
echo "COPY ./main.py /home/app/" >> tempdir/Dockerfile
echo "EXPOSE 3294" >> tempdir/Dockerfile
echo "CMD python3 /home/app/main.py" >> tempdir/Dockerfile
cd ./tempdir 
docker build -t main_py_img:v1 .

docker run -t -d --name main_cont -p 3284:3294 main_py_img:v1 
docker ps -a 
