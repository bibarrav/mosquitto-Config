#Update mosquitto Docker image and then re-create the container 
docker pull bibarrav/mosquitto-docker #eclipse-mosquitto
docker stop mosquitto                                                                                    
docker rm mosquitto

docker run --name=mosquitto \
-p 1883:1883 -p 9001:9001 \
-v /opt/mosquitto/config:/mosquitto/config \
-v /opt/mosquitto/data:/mosquitto/data \
-v /opt/mosquitto/log:/mosquitto/log \
--restart=always  -d \
bibarrav/mosquitto-docker

#eclipse-mosquitto