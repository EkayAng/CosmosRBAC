#!/bin/bash

az account set --subscription $1
MyAccount=$2
MyResourceGroup=$3

MyPrinciples="$(az cosmosdb sql role assignment list --account-name $MyAccount --resource-group $MyResourceGroup --query  '[].{principalId:principalId, id:id}' -o tsv)"

echo "Role Assignment Id                    Object Id                            Display Name"
echo "------------------------------------ ------------------------------------ ------------------------------------"

declare -i myindex=1
for value in $MyPrinciples
do
    if [[ $(expr $myindex % 2) != '0' ]]
    then
        pricipleId=$value
    else
        referenceId="$(echo $value |  grep -oP '.{36}$')"
        result="$(az ad sp show --id $pricipleId --query '{objectId:objectId,displayName:displayName}' -o tsv --only-show-errors 2> /dev/null)"
        status=$?
        if [[ $status -eq 0 ]]
        then
            echo $referenceId $result
        else
            echo $referenceId $(az ad user show --id $pricipleId --query '{objectId:objectId,displayName:displayName}' -o tsv --only-show-errors)
        fi    
    fi        
    myindex=myindex+1
done