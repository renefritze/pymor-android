PYVER=3.5
IMAGE=renemilk/pfa:$(PYVER)

image:
	cd docker && docker build --build-arg PYVER=$(PYVER) -t $(IMAGE) .

debug: 
	docker run -v $(shell pwd):/home/pymor -it $(IMAGE) buildozer android debug

deploy: 
	docker run -v /dev/bus/usb:/dev/bus/usb -v /etc/udev/rules.d/:/etc/udev/rules.d/ \
		-v $(shell pwd):/home/pymor -it $(IMAGE) buildozer android debug deploy run logcat
	
