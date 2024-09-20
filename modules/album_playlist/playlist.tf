terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }

}

data "spotify_search_track" "by_album" {
  album  = var.album
  artist = var.artist_name

}

resource "spotify_playlist" "playlist1" {
  name        = var.playlist_name
  description = var.playlist_description
  public      = var.enable_public

  tracks = [
    for i in range(0, length(data.spotify_search_track.by_album.tracks)) : data.spotify_search_track.by_album.tracks[i].id
  ]
}

output "album_playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist1.id}"
}
