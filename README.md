# docker-netbeans

NetBeans v12.1 in a Docker container

## Requirements
- Docker 1.2+ (should work fine on 1.0+ but I haven't tried)
- An X11 socket
  
## Quickstart
Give execution permissions to build, netbeans and run files.
```
sudo chmod +x build
sudo chmod +x netbeans
sudo chmod +x run
```
Run the build file first to create the docker container from the image file.
```
./build
```
And then execute the netbeans file to launch the program.
```
./netbeans
```
## Acknowledgment
I want to thank [fgrehm](https://github.com/fgrehm) and [rafdouglas](https://github.com/rafdouglas) for their work on the [docker-netbeans](https://github.com/fgrehm/docker-netbeans) and [eclipse_docker_base](https://github.com/rafdouglas/eclipse_docker_base) in whose is based this project.

## License
Read the LICENSE file.