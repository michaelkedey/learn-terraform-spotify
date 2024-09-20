# Create a Spotify Playlist with Terraform

This repo is a companion repo to the [Create a Spotify Playlist with Terraform](https://developer.hashicorp.com/terraform/tutorials/community-providers/spotify-playlist) tutorial.
It contains Terraform configuration you can use to learn how to create a playlist on Spotify.

## My Terraform Spotify Playlist
**This updated repo contains terraform code to create spotify playlists**   
- [click to fork this repo](https://github.com/michaelkedey/learn-terraform-spotify/fork)
- I have deffined playlists in different forms
    - by artist name
    - by album and artist name
    - by song and artist name
- These playlists have been deffined as modules with default values
- I also have differnt `.tfvars` files for creating playlists with different values
    - [ghana.tfvars](./env/tfvars/ghana.tfvars) contains values for creating playlists of my favorite ghanaian rapper
    - [nigeria.tfvars](./env/tfvars/nigeria.tfvars) contains values for creating playlists of one of my favorite nigerian musicians
    - [us.tfvars](./env/tfvars/us.tfvars) contains values for creating playlists of my favorite american rapper
    - feel free to add your own `.tfvars` file or modify the existing one. If you fail to specify a `var-file` during `terraform apply`, default playlists will be created for you.
- **To run this code, clone the repo and run the script**
    ```
    git clone https://github.com/michaelkedey/learn-terraform-spotify.git
    cd learn-terraform-spotify
    ```
- **To run this code without a remote backend configuration, modify the `backend` configuration in the [providers.tf](./providers.tf) file by commenting the s3 configuration.**
    - open the [run.sh](./run.sh) script and replace 
        ```
        terraform init --backend-config="./env/backend/backend.tfvars"
        ```
      with
        ```
        terraform init
        ```
    - execute the [run.sh](./run.sh) script
        ```
        ./run.sh
        ``` 
- this [script](./run.sh) will create a playlist with the detials specified in the variable file of choice.
  -  You can modify the [variable files](./tfvars/) to suit your needs.

- **To run this code manually with the default values, run**
    ```
    terraform init
    terraform plan
    terraform apply
    ```
- **To run with different values (eg. nigeria.tfvars) however, run**
    ```
    terraform init
    terraform plan -var-file=env/tfvars/nigeria.tfvars
    terraform apply -var-file=env/tfvars/nigeria.tfvars
    ```

- Directory structure
```plaintext
$ tree
.
|-- LICENSE
|-- README.md
|-- env
|   |-- backend
|   |   `-- backend.tfvars
|   `-- tfvars
|       |-- ghana.tfvars  
|       |-- nigeria.tfvars
|       `-- us.tfvars     
|-- locals.tf
|-- main.tf
|-- modules
|   |-- README.md       
|   |-- album_playlist  
|   |   |-- playlist.tf 
|   |   `-- variables.tf
|   |-- artist_playlist
|   |   |-- playlist.tf
|   |   `-- variables.tf
|   `-- song_playlist
|       |-- playlist.tf
|       `-- variables.tf
|-- outputs.tf
|-- providers.tf
|-- run.sh
|-- terraform.tfvars
`-- variables.tf

7 directories, 20 files
```
