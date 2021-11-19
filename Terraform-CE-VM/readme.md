# Terraform template for creating a simple VM with a firewall rule open
Terraform modular template for adding a GCP VM with a firewall rule on an existing "default" network.

### Example 
```t
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
```
Just replace the variables and it can be ran locally if terraform is installed, and pre-auth has been done. 
