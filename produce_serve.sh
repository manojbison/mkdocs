#! /bin/bash

docker run --rm -ti -v /home/manoj/Desktop/my_project:/mkdocs/my_project \
	<image_name> produce /mkdocs/my_project | \
	docker run --rm -p 8000:8000 -i <image_name> serve
