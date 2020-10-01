data "digitalocean_ssh_key" "ssh_key" {
  name = var.ssh_key_name
}

resource "digitalocean_droplet" "web" {
  image = var.droplet.image
  name = data.external.droplet_name.result.name
  region = var.region
  size = var.droplet.size
  ssh_keys = [
    data.digitalocean_ssh_key.ssh_key.id
  ]
}