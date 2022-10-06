#!/bin/sh

WEB_CONSOLE_HOSTNAME=`kubectl -n stackgres get svc --field-selector metadata.name=stackgres-restapi -o jsonpath="{.items[0].status.loadBalancer.ingress[0].hostname}"`

echo "Connect to https://${WEB_CONSOLE_HOSTNAME}"
echo "Username: admin"
echo "Passowrd:"
echo "\tkubectl get secret -n stackgres stackgres-restapi --template '{{ printf \"%s\" (.data.clearPassword | base64decode) }}'"


echo "\tkubectl -n buildonoss exec -ti pg-0 -c postgres-util -- psql -c 'select * from pg_available_extensions()'"

echo "\nNamespace buildonoss -> Stackgres Clusters -> pg -> Configuration -> EDIT -> Extensions -> add 'postgis' extension\n"

echo "\tkubectl -n buildonoss exec -ti pg-0 -c postgres-util -- psql -c 'select * from pg_available_extensions()'"

echo "\tkubectl -n buildonoss exec -ti pg-0 -c postgres-util -- psql -c 'create extension postgis'"

