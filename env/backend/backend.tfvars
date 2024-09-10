#bucket exists already dev
bucket = "web-pro-bucket"
key    = "terraform/tfstates/terraform-spotify/terraform.tfstate"
region = "us-east-1"


# terraform init -reconfigure -var-file="./env/dev/.terraform.tfvars" -backend-config="./env/dev/backend.tfvars"
# terraform plan -var-file="./env/dev/.terraform.tfvars"
# terraform apply --auto-approve -var-file="./env/dev/.terraform.tfvars"