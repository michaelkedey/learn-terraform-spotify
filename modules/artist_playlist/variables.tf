variable "artist_name" {
  type        = string
  description = "Your favorite artist name"
  default     = "m.anifest"
}

variable "playlist_name" {
  type = string
}       
  
variable "playlist_description" {
  type = string
} 

variable "enable_public" {
  type = bool
}   

variable "songs_limit" {
  type = number
}