#!/bin/bash
rm ~/Library/Containers/com.docker.docker
mkdir /goinfre/${USER}/com.docker.docker
ln -s /goinfre/${USER}/com.docker.docker ~/Library/Containers/com.docker.docker
