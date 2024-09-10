terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }

}

data "spotify_search_track" "by_name" {
  name   = var.fav_song
  artist = var.artist_name

}

resource "spotify_playlist" "playlist3" {
  name        = local.playlist_name
  description = local.playlist_description
  public      = local.enable_public

  tracks = [
    for i in range(0, length(data.spotify_search_track.by_name.tracks)) : data.spotify_search_track.by_name.tracks[i].id
  ]
}

output "track_playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist3.id}"
}

