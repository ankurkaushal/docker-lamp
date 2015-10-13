# docker-lamp
LAMP image based off of base Ubuntu image


## Usage

Clone repo.

Then in your terminal,

```
$ cd docker-lamp
$ docker build -t $nameOfImage .
$ docker run -p 5000:80 -t -i $nameOfImage
```

Then in your browser,

```
http://$yourDockerMachineIP:5000
```
