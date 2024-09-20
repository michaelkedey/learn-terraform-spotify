terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }

}

data "spotify_search_track" "by_artist" {
  artist = var.artist_name
  limit  = var.songs_limit
}

resource "spotify_playlist" "playlist2" {
  name        = var.playlist_name
  description = var.playlist_description
  public      = var.enable_public

  tracks = [
    for i in range(0, length(data.spotify_search_track.by_artist.tracks)) : data.spotify_search_track.by_artist.tracks[i].id
  ]
}

output "artist_playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist2.id}"
}