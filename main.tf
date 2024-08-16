# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

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

data "spotify_search_track" "by_artist" {
  artist = "m.anifest"
  #  album = "Jolene"
  #  name  = "Early Morning Breeze"
}

# resource "spotify_playlist" "playlist" {
#   name        = "Terraform Summer Playlist"
#   description = "This playlist was created by Terraform"
#   public      = true

#   tracks = [
#     data.spotify_search_track.by_artist.tracks[0].id,
#     data.spotify_search_track.by_artist.tracks[1].id,
#     data.spotify_search_track.by_artist.tracks[2].id,
#   ]
# }

resource "spotify_playlist" "playlist" {
  name        = "Terraform Summer Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    for i in range(0, length(data.spotify_search_track.by_artist.tracks)) : data.spotify_search_track.by_artist.tracks[i].id
  ]
}


