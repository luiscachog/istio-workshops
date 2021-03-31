#!/bin/bash

# delete all istio
istioctl x uninstall -y --purge
kubectl delete ns istio-system

pushd ./01 || exit
./cleanup.sh
popd || exit

pushd ./02 || exit
./cleanup.sh
popd || exit

pushd ./03 || exit
./cleanup.sh
popd || exit

pushd ./04 || exit
./cleanup.sh
popd || exit

pushd ./05 || exit
./cleanup.sh
popd || exit

pushd ./06 || exit
./cleanup.sh
popd || exit
