variable "do_token" {
  type = string
}
variable "ssh_key_name" {
  type = string
}
variable "domain_name" {
  type = string
}
variable "region" {
  type = string
  default = "sgp1"
}

variable "droplet" {
  type = object({
    image = string
    size = string
  })
  default = { 
    image = "ubuntu-18-04-x64"
    size =  "s-1vcpu-1gb"
  }
}