#!/bin/bash
# Author: michael_kedey
# Date: 10/9/2024

# fromat the code in the current dir
terraform fmt 

# initialize backend
#terraform init 
terraform init --backend-config="./env/backend/backend.tfvars"

#validate, plan and apply the code
terraform validate

terraform plan --var-file="./env/tfvars/ghana.tfvars"

terraform apply --var-file="./env/tfvars/ghana.tfvars" --auto-approve

#delete resources after completion
#terraform destroy --var-file="./tfvars/ghana.tfvars" -auto-approve
