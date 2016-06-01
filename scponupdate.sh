#!/bin/bash

while inotifywait -qqr "$1"; do 
  echo "file updated";
  scp -P 26 /home/barestides/IdeaProjects/ArcaneHelper/jar/CommandHelper.jar barestides@192.168.200.135:/home/barestides/server/plugins/CommandHelper.jar
done
