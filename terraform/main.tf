terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
    token = var.yc_token
    cloud_id = var.cloud_id
    folder_id = var.folder_id
    zone = var.zone
}

resource "yandex_compute_instance" "vm" {
  count = 7
  name = "terraform-vm-${count.index + 1}"
  zone = var.zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
          image_id = "fd86601pa1f50ta9dffg"
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}