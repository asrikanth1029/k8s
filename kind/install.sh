#!/bin/bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64   #download and install kind
chmod +x ./kind                                                        #give all permissions for owner 
sudo mv ./kind /usr/bin/kind                                           #move to any system path if needed
kind create cluster --image=kindest/node:v1.20.7@sha256:cbeaf907fc78ac97ce7b625e4bf0de16e3ea725daf6b04f930bd14c67c671ff9
