#! /bin/bash

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823

sudo apt-get install apt-transport-https

sudo apt-get update

sudo apt-get install sbt

sudo apt-get install git

git clone https://github.com/rpoudel3/spark-examples

cd spark-examples

sbt assembly

cp target/scala-2.11/googlegenomics-spark-examples-assembly-*.jar ~/

cd ~/



