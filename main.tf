terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.8.2"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_volume" "vm_disk" {
  name   = "ubuntu-disk"
  pool   = "default"
  source = "/home/idk/.qemu/ISOs/ubuntu-22.04.iso"
  format = "qcow2"
}

resource "libvirt_domain" "ubuntu_vm" {
  name   = "ubuntu-vm"
  memory = 2048
  vcpu   = 2

  disk {
    volume_id = libvirt_volume.vm_disk.id
  }

  network_interface {
    network_name = "default"
  }

  console {
    type        = "pty"
    target_port = "0"
  }

  graphics {
    type        = "spice"
    listen_type = "none"
  }
}

