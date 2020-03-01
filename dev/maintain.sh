#!/usr/bin/env bash
# copy right by sinlov at https://github.com/sinlov
# Licenses http://www.apache.org/licenses/LICENSE-2.0

run_path=$(pwd)
shell_run_name=$(basename $0)
shell_run_path=$(cd `dirname $0`; pwd)
# load utils-docker-maintain.sh
source ${shell_run_path}/utils-docker-maintain.sh

# check env start
# checkUserAsRoot
checkEnv docker
checkEnv docker-compose
docker version
# check env end

# update new docker-compose start
pI "=> maintain docker at $(pwd) start"
# check compose file
docker-compose config -q
checkFuncBack "docker-compose config -q"

# docker-compose up -d
# checkFuncBack "docker-compose up -d"
# for remove useless containers add --remove-orphans
docker-compose up -d --remove-orphans
checkFuncBack "docker-compose up -d --remove-orphans"

# stop
pW "\nStop some contain start"
# dockerStopContainWhenRunning dev-Demo-redis
# checkFuncBack "dockerStopContainWhenRunning dev-Demo-redis"
pW "\nStop some contain end"

# restart
pW "\nRestart some contain start"
# dockerRestartContainWhenRunning dev-Demo-redis
# checkFuncBack "dockerRestartContainWhenRunning dev-Demo-redis"
pW "\nRestart some contain end"

pI "\n=> maintain docker at $(pwd) finish"
