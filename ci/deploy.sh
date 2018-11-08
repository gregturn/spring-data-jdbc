#!/usr/bin/env bash

set -euo pipefail

[[ -d $PWD/maven && ! -d $HOME/.m2 ]] && ln -s $PWD/maven $HOME/.m2

spring_data_jdbc_artifactory=$(pwd)/spring_data_jdbc_artifactory

rm -rf $HOME/.m2/repository/org/springframework/data 2> /dev/null || :

cd spring-data-jdbc-github
./mvnw deploy \
    -DaltDeploymentRepository=distribution::default::file://${spring_data_jdbc_artifactory}
