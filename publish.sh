#!/bin/sh

HELM_HOME=/var/jenkins_home/linux-amd64

rm *.tgz
$HELM_HOME/helm lint week5
$HELM_HOME/helm package week5
curl --data-binary "@week5-0.1.0.tgz" http://localhost:9080/api/charts

exit
