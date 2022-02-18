#! /bin/bash

docker run --name producer --rm -v /home/manoj/Desktop/my_project:/mkdocs/my_project \
	<image_name> produce /mkdocs/my_project > result.tar.gz
