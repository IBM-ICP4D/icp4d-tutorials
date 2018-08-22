#!/bin/sh

basedir=$(pwd)
IIS_POD=is-en-conductor-0


## Import Categories, Terms, Policy and Rules
CLI_DIR=/opt/IBM/InformationServer/Clients/istools/cli

GLOSSARY=business-glossary-xml-export-mortgage.xml

kubectl cp ${basedir}/${GLOSSARY} zen/${IIS_POD}:/tmp
kubectl exec -it -n zen ${IIS_POD} -- bash -c "${CLI_DIR}/istool.sh glossary import -dom is-servicesdocker:9446 -u isadmin -p isadmin -filename '/tmp/${GLOSSARY}' -format XML -mergemethod overwrite"

