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
  limit  = local.songs_limit
}

resource "spotify_playlist" "playlist2" {
  name        = local.playlist_name
  description = local.playlist_description
  public      = local.enable_public

  tracks = [
    for i in range(0, length(data.spotify_search_track.by_artist.tracks)) : data.spotify_search_track.by_artist.tracks[i].id
  ]
}

output "artist_playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist2.id}"
}