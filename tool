#!/bin/bash
docker-compose run --rm -e "COLUMNS=$(tput cols)" -e "LINES=$(tput lines)" tool "$@"
