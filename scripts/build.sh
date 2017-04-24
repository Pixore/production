#!/bin/bash

DATE=`date +%Y-%m-%d:%H:%M:%S` 
function each {
  declare -a arr=("api" "website" "editor")

  ## now loop through the above array
  for i in "${arr[@]}"
  do
    mkdir "build/$i"

    echo "$i"
    cd "$i"

    # yarn install &&
    yarn run build &&
    cp -r build/* "../build/$i"
    cd ..
    # or do whatever with individual element of the array
  done
}

rm -rf build &&
mkdir build &&

cp ./docker-compose.yml build
cp ./nginx.conf build


echo "for each ..."
each &&

cd build &&
git init &&
git remote add deploy "deploy@pixore.albizures.com:$DEPLOY_PATH" &&
git add . &&
git commit -m '$DATE'