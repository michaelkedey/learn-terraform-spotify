# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


module "album_playlist" {
  source               = "./modules/album_playlist"
  album                = var.album
  artist_name          = var.artist_name
  playlist_name        = local.playlist_name
  playlist_description = local.playlist_description
  enable_public        = local.enable_public
}

module "artist_playlist" {
  source               = "./modules/artist_playlist"
  artist_name          = var.artist_name
  playlist_name        = local.playlist_name
  playlist_description = local.playlist_description
  enable_public        = local.enable_public
  songs_limit          = local.songs_limit
}

module "song_playlist" {
  source               = "./modules/song_playlist"
  fav_song             = var.fav_song
  artist_name          = var.artist_name
  playlist_name        = local.playlist_name
  playlist_description = local.playlist_description
  enable_public        = local.enable_public
}







