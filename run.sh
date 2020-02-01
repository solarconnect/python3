#!/bin/bash

CMD=$1;
NAME="python3"

if [[ "$CMD" == "create" ]]
then
    docker-compose down
    docker-compose up -d --build
    docker cp python3_run:/python-package/site-packages ./tmp
    docker exec -it python3_run /python3/setup/pre_install_lib.sh
    docker-compose down
elif [[ "$CMD" == "destroy" ]]
then
    if [[ `docker-compose ps -q run` ]]
    then
        docker-compose down
    fi
    docker rmi -f python3_run
elif [[ "$CMD" == "install" ]]
then
    if [[ -z `docker-compose ps -q run` ]]
    then
        docker-compose up -d
    fi
    docker exec -it python3_run /python3/setup/requirements_install.sh
elif [[ "$CMD" == "exit" ]]
then
    docker-compose down
elif [[ "$CMD" == "restart" ]]
then
    docker-compose restart
else
    if [[ -z `docker-compose ps -q run` ]]
    then
        docker-compose up -d
    fi
    
    docker exec -it python3_run /bin/bash
fi