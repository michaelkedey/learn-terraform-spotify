- run the [script](./run.sh) to create your 3 different playlists from your favorite artist.
```
cd terraform_modules && ./run.sh
```

- This script will create a playlist with the detials specified in the variable file of choice.
  -  You can modify the [variable files](./tfvars/) to suit your needs.
  -  Switch between different artits by specifying different variable file during plan and apply. modify the script as below
    ```
    terraform plan --var-file="./tfvars/us.tfvars"
    terraform apply --var-file="./tfvars/us.tfvars" --auto-approve  
    ```

