terraform {
    required_providers {
      google = {
        source = "hashicorp/google"
        version = "~> 3.90.0"
      }
    }
}

provider "google" {
    project = "<ProjectRequired>"
    region = "<Region>"
}

module "webserver" {
    source = "./modules/CE-Instance"
    servername = "<VM Instance Name>"
    type = "<type of VM>"
    zone = "<Zone deployed>"
    image = "<Image to be run>"
}