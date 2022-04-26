# CosmosRBAC
Cosmos RBAC scripts

Helper Script for common Cosmos DB RBAC management

## list-cosmos-role.sh 
List all current role assignment on Cosmos DB

Arguments:
- $1 - Subscription Name
- $2 - Cosmos DB Account Name
- $3 - Resource Group Name

Example:
./list-cosmos-role.sh "PRD_SUBSCRIPTION" "cosmosdb-prd-db" "my-resource-rg"

## create-cosmos-contributor.sh
Create *Cosmos DB Built-in Data Contributor* role assignment

Arguments:
- $1 - Subscription Name
- $2 - Cosmos DB Account Name
- $3 - Resource Group Name
- $4 - Priciple Id

Example:
./create-cosmos-contributor.sh "PRD_SUBSCRIPTION" "cosmosdb-prd-db" "my-resource-rg" "XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"

## create-cosmos-reader.sh
Create *Cosmos DB Built-in Data Reader* role assignment

Arguments:
- $1 - Subscription Name
- $2 - Cosmos DB Account Name
- $3 - Resource Group Name
- $4 - Priciple Id

Example:
./create-cosmos-reader.sh "PRD_SUBSCRIPTION" "cosmosdb-prd-db" "my-resource-rg" "XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"

## delete-cosmos-role.sh
Delete Cosmos DB RBAC role assignment

Arguments:
- $1 - Subscription Name
- $2 - Cosmos DB Account Name
- $3 - Resource Group Name
- $4 - Role Assignment Id

Example:
./delete-cosmos-role.sh "PRD_SUBSCRIPTION" "cosmosdb-prd-db" "my-resource-rg" "XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"