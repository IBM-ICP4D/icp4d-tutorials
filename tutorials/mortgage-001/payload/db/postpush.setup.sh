#expose this DB service out side of the kube network.


#EXTERNAL_IP=`kubectl describe service ibm-nginx-svc -n zen | grep 'External IPs' | cut -d: -f2 | xargs|sed 's/^/"/;s/$/"/'|sed 's/,/","/g'`
#EXTERNAL_IP=`kubectl describe service ibm-nginx-svc -n zen | grep 'External IPs' | cut -d: -f2 | xargs`

#echo "kubectl -n zen patch service is-xmetadocker --type='json' -p='[{\"op\": \"add\", \"path\": \"/spec/externalIPs\", \"value\":[O]}]'"| sed "s/O/$EXTERNAL_IP/g" | bash
