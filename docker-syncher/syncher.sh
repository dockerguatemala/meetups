#!/bin/bash


git clone https://github.com/docker-library/mysql.git

cd mysql

git remote set-url origin https://github.com/YOURCOMPANY/REPOSITORY.git

# Display new remotes
git remote -v

# Push new changes to git
git push origin master