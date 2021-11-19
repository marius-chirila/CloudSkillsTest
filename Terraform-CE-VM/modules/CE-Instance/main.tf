resource "google_compute_firewall" "default" {
  name    = "ingress-firewall-allow-https"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_tags = ["web"]
}

resource "google_compute_instance" "web" {
  name         = var.servername
  machine_type = var.type
  zone         = var.zone

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }


  metadata_startup_script = <<-EOF
                            #! /bin/bash
                            apt update && apt -y install apache2
                            EOF

}