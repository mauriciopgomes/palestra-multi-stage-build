#Clean
docker system prune -a  

#Single Stage
docker build -t single-stage -f single-stage.dockerfile .
docker run -p 3000:3000 single-stage

#Multi Stage
docker build -t multi-stage -f multi-stage.dockerfile .
docker run -p 80:80 multi-stage

#One of the most challenging things about building images is keeping the image size down. Each RUN, COPY, and ADD instruction in the Dockerfile adds a layer to the #image, and you need to remember to clean up any artifacts you don’t need before moving on to the next layer. To write a really efficient Dockerfile, you have #traditionally needed to employ shell tricks and other logic to keep the layers as small as possible and to ensure that each layer has the artifacts it needs from the #previous layer and nothing else.

#It was actually very common to have one Dockerfile to use for development (which contained everything needed to build your application), and a slimmed-down one to use #for production, which only contained your application and exactly what was needed to run it. This has been referred to as the “builder pattern”. Maintaining two #Dockerfiles is not ideal.
