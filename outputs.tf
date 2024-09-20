# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "track_playlist_url" {
  value = module.song_playlist.track_playlist_url
}

output "artist_playlist_url" {
  value = module.artist_playlist.artist_playlist_url
}

output "album_playlist_url" {
  value = module.album_playlist.album_playlist_url
}