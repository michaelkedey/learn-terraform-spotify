#!/bin/bash
# Author: michael_kedey
# Date: 10/9/2024

# fromat the code in the current dir
terraform fmt .

# Find all directories with .tf files and run terraform fmt in them
find . -type d -exec bash -c 'cd "{}" && [[ -n "$(find . -name "*.tf")" ]] && terraform fmt .' \;

# initialize backend
terraform init --backend-config="./env/backend/backend.tfvars"


#validate and apply the code
terraform validate

terraform plan --var-file="./env/tfvars/ghana.tfvars"

terraform apply --var-file="./env/tfvars/ghana.tfvars" -auto-approve

#delete resources after completion
#terraform destroy --var-file="./env/tfvars/ghana.tfvars" -auto-approve
