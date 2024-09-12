variable "spotify_api_key" {
  type        = string
  description = "Set this as the APIKey that the authorization proxy server outputs"
}

variable "market" {
  default = "GH"
  type    = string
}

variable "artist_name" {
  type        = string
  description = "Your favorite artist name"
  default     = "m.anifest"
}

variable "fav_song" {
  type        = string
  description = "Your favorite artist name"
  default     = "no shortcut to heaven"
}

variable "album" {
  default = "Madina To The Universe"
  type    = string
}