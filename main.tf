# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


module "album_playlist" {
  source = "./modules/album_playlist"
  album = var.album
  artist_name = var.artist_name
}

module "artist_playlist" {
  source = "./modules/artist_playlist"
  artist_name = var.artist_name
}

module "song_playlist" {
  source = "./modules/song_playlist"
  fav_song = var.fav_song
  artist_name = var.artist_name
}







