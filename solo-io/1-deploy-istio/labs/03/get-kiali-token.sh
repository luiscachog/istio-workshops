#!/bin/bash

kubectl get secret -n istio-system -o jsonpath="{.data.token}" $(kubectl get secret -n istio-system | grep kiali-dashboard | awk '{print$1}') | base64 --decode && printf "\n"
