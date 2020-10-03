# chromebook_kernel_build
 Docker container that builds the chromiumos kernel for chromebooks that run traditional deb based GNU/Linux distributions.



Clone it:

git clone https://github.com/mrwhistles/chromebook_kernel_build.git


Build it:

docker build -f Dockerfile . --tag coskernel:2.0



Run the container:

docker run -v $PWD/build/:/build --detach coskernel:2.0


Collect the .deb packages from /build:
