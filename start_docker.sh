#!/bin/bash
pwd

echo "FROM python:3.6" > Dockerfile
echo "WORKDIR /home/app/" >> Dockerfile


echo "RUN pip install --no-cache-dir -r requirements.txt " >> Dockerfile
#echo "RUN pip install flask" >> Dockerfile

echo "COPY ./App/ ." >> Dockerfile
echo "EXPOSE 3294" >> Dockerfile
echo 'CMD ["python3","/home/app/main.py"]' >> Dockerfile
 
#docker build -t main_py_img:v1 .

#if [ $(docker ps | wc -l) -eq 1 ]
#then
#	rm Dockerfile
#	echo "Dockerfile removed successfully"
#fi

#docker run  --rm -t -d --name main_cont -p 3284:3294  main_py_img:v1

docker compose up -d  
docker ps  
docker inspect mainNetwork | grep -A 1 "Subnet"


docker exec -it $(docker ps -q) /bin/bash 


