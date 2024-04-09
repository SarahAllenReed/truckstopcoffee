#!/bin/bash

cd ..
cd public/
find . -mindepth 1 -maxdepth 1 ! -name 'robots.txt' -print0 | xargs -0 rm -rf
cd ..
hugo 
git add *
git commit
git push
