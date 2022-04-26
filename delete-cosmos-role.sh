#!/bin/bash

az account set --subscription $1

az cosmosdb sql role assignment delete --account-name $2 \
--resource-group $3 \
--role-assignment-id $4 \
--yes