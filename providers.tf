terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }

  backend "s3" {

  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}