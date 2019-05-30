# Static Website Demo

Bundles a small static website into an NGINX container. 

### Building

We clone a static website into our local folder, then run the 
`docker build` command. The resulting Docker image will be 
named *static-website*.

```bash
$ git clone https://github.com/aitkenably/zeus-site.git
$ docker build -t aitkenably/zeus-site .
```

### Running 

We run our image, mapping our local 8080 port to the 80 port of the 
container. Hitting http://localhost:8080 in a browser should display 
the static site that is hosted inside the container. 

```bash
$ docker run -d -p=8080:80 --name=site aitkenably/zeus-site
```

### Stopping 

```bash
$ docker stop site
$ docker rm site
```

### Exploring the image

Running the image interactively and passing the command `bash` allows 
us to shell into the image and explore what's installed. 

```bash
 $ docker run -it --rm aitkenably/zeus-site bash
```
  
### Deleting the image 

Over time, your local Docker installation will probably have dozens of 
images. I delete images that I'm no longer using. 

```bash
$ docker image rm aitkenably/zeus-site		
```