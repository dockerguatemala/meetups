#!/bin/bash
repo=mysql
git clone https://github.com/docker-library/$repo.git

cd $repo

for d in */ ; do
	d=${d%/}
	cd $d
	echo "building $d"
	docker build . -t yourcompany.docker.com/base/$repo:$d
    echo "pushing $repo:$d"
	docker push yourcompany.docker.com/base/$repo:$d
done
