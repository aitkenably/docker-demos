
IMAGE_NAME = static-website
CONTAINER_NAME = mysite
PORT = 8080

build: zeus-site
	docker build -t $(IMAGE_NAME) .

zeus-site:
	git clone https://github.com/aitkenably/zeus-site.git

# TODO: Handle if image doesn't exist
run:
	docker run -d -p=$(PORT):80 --name=$(CONTAINER_NAME) $(IMAGE_NAME)

# TODO: Handle if image doesn't exist
shell:
	docker run -it --rm $(IMAGE_NAME) bash

# TODO: Handle if already stopped
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# TODO: Need to handle if image doesn't exist 
clean:
	rm -rf zeus-site
	docker image rm $(IMAGE_NAME)