#!/usr/bin/env bash
# copy right by sinlov at https://github.com/sinlov
# Licenses http://www.apache.org/licenses/LICENSE-2.0

# set remove contain
remove_contain_list=(
  Dev-Demo-redis-permissions-fix
  Dev-Demo-redis
)
remove_network_list=(
  dev_default
)

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
pI "=> remove docker at $(pwd) start"
# check compose file
docker-compose config -q
checkFuncBack "docker-compose config -q"

# stop
pW "\nStop some contain start"
docker-compose stop
checkFuncBack "docker-compose stop"
pW "\nStop some contain end"

pW "\nRemove some contain start"
removeContainByList(){
    if [ ! -n "${remove_contain_list}" ];then
        pI "\n=>remove_contain_list is empty at script: ${shell_run_path}/${shell_run_name}\n"
    else
        pI "\n=>remove contain by script: ${shell_run_path}/${shell_run_name} at remove_contain_list start\n"
        for remove_contain in ${remove_contain_list[@]};
        do
            dockerRemoveContainSafe ${remove_contain}
            checkFuncBack "dockerRemoveContainSafe ${remove_contain}"
        done
        pI "\n=>remove contain by script: ${shell_run_path}/${shell_run_name} at remove_contain_list end\n"
    fi
}
removeContainByList
pW "\nRemove some contain end"
pW "\nRemove some network start"
removeNetworkByList(){
    if [ ! -n "${remove_network_list}" ];then
        pI "\n=>remove_network_list is empty at script: ${shell_run_path}/${shell_run_name}\n"
    else
        pI "\n=>remove contain by script: ${shell_run_path}/${shell_run_name} at remove_network_list start\n"
        for remove_network in ${remove_network_list[@]};
        do
            dockerRemoveNetworkSafe ${remove_network}
            checkFuncBack "dockerRemoveNetworkSafe ${remove_network}"
        done
        pI "\n=>remove contain by script: ${shell_run_path}/${shell_run_name} at remove_network_list end\n"
    fi
}
removeNetworkByList
pW "\nRemove some network start"

pI "if want remove volume use: [ docker volume prune ]"

pI "\n=> remove docker at $(pwd) finish"
