#!/bin/bash

az account set --subscription $1

az cosmosdb sql role assignment create --account-name $2 \
--resource-group $3 \
--role-definition-name "Cosmos DB Built-in Data Reader" \
--scope "/" --principal-id $4
