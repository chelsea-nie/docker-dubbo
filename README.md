# docker-dubbo
simple and rude
## docker build
docker build -d dubbo .
## docker start
docker run -it -d -p 20880:20880 -v /opt/logs/dubbo.out:/opt/dubbo.out --name dubbo dubbo 

you need pack one of yourself and it's name dubbo.tar.gz,it involve start.sh haha……
