#!/usr/bin/bash

install () {
    curl -L --silent https://github.com/docker/compose/releases/download/${1}/docker-compose-$(uname -s)-$(uname -m) -o ${2}/docker-compose
    chmod +x ${2}/docker-compose
    docker-compose version
}

main () {
    check=$(docker-compose version)
    if [[ $? -ne 0 ]]; then 
        current=0; 
    else 
        current=$(echo $check | head -n 1 | awk '{print $3}' | cut -d \, -f1)
    fi
    latest=$(curl https://api.github.com/repos/docker/compose/releases/latest --silent | jq .name -r)
    compose_dir=/usr/bin

    if [[ $(awk 'BEGIN {print ("'$latest'" > "'$current'")}') -eq 1 ]]; then
        if [[ $current -eq 0 ]]; then
            echo "docker-compose is not installed; installing version ${latest}..."
        else
            echo "upgrading from ${current} to ${latest}"
        fi
        install $latest $compose_dir
    else
        echo "docker-compose is already on the latest version - ${current}"
    fi
}

if [ $(id -u) = 0 ]
then
    main
else
    echo "Please run as root."
fi
