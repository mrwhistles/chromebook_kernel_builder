# chromebook_kernel_builder
 Docker container that builds the chromiumos kernel for chromebooks that run traditional deb based GNU/Linux distributions.
I'm running this using windows docker desktop (v19.03.13).


## Clone it all:

git clone https://github.com/mrwhistles/chromebook_kernel_builder.git


## Build a docker image:

docker build -f Dockerfile . --tag coskernel:2.1



## Run a container with that image:

docker run -v $PWD/build/:/build --name coskernel --detach coskernel:2.1


## Check on things as it runs:

docker logs coskernel -f


## Collect the .deb packages from /build
