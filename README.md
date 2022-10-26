#Clean
docker system prune -a  

#Single Stage
docker build -t single-stage -f single-stage.dockerfile .
docker run -p 3000:3000 single-stage

#Multi Stage
docker build -t multi-stage -f multi-stage.dockerfile .
docker run -p 80:80 multi-stage
