variable "TF_VERSION" {
  default     = "0.12"
  description = "terraform engine version to be used in schematics"
}

variable "image_url" {
  default = "cos://us-east/rackware-bucket/RMMGoldenTemplate-0.qcow2"
}

/**
            End of the Provider code
*/

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.ibm_region
}

##################################################################################################

resource "ibm_is_vpc" "vpc" {
  name           = "${var.prefix}vpc"
  resource_group = data.ibm_resource_group.rg.id
}


data "ibm_resource_group" "rg" {
  name = var.resource_group
}

resource "ibm_is_security_group" "sg" {
  name           = "${var.prefix}sg"
  vpc            = ibm_is_vpc.vpc.id
  resource_group = data.ibm_resource_group.rg.id
}


resource "ibm_is_security_group_rule" "ssh" {
  group     = ibm_is_security_group.sg.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 22
    port_max = 22
  }
}

resource "ibm_is_subnet" "subnet" {
  name                     = "${var.prefix}subnet"
  vpc                      = ibm_is_vpc.vpc.id
  zone                     = var.zone
  total_ipv4_address_count = 8
  resource_group           = data.ibm_resource_group.rg.id
}


data "ibm_is_ssh_key" "ssh_key_id" {
  name = var.ssh_key
}


resource "ibm_is_image" "custom_image" {
  name             = "${var.prefix}-cent-os-7"
  href             = var.image_url
  operating_system = "centos-7-amd64"
  resource_group   = data.ibm_resource_group.rg.id
  timeouts {
    create = "30m"
    delete = "30m"
  }
}


resource "ibm_is_instance" "vsi" {
  name           = "${var.prefix}vsi"
  vpc            = ibm_is_vpc.vpc.id
  zone           = var.zone
  keys           = [data.ibm_is_ssh_key.ssh_key_id.id]
  resource_group = data.ibm_resource_group.rg.id
  image          = ibm_is_image.custom_image.id
  profile        = var.profile

  primary_network_interface {
    subnet          = ibm_is_subnet.subnet.id
    security_groups = [ibm_is_security_group.sg.id]
  }
}

resource "ibm_is_floating_ip" "fip" {
  name           = "${var.prefix}fip"
  target         = ibm_is_instance.vsi.primary_network_interface[0].id
  resource_group = data.ibm_resource_group.rg.id
}

output "PUBLIC_IP" {
  value = ibm_is_floating_ip.fip.address
}

/**
Variable Section
*/

variable "ibmcloud_api_key" {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
  type        = string
}

variable "ssh_key" {
  description = "The IBM Cloud platform SSH keys"
  type        = string

}

variable "ibm_region" {
  description = "IBM Cloud region where all resources will be deployed"
  type        = string
}

variable "resource_group" {
  description = "Please enter your resource group name."
}

variable "profile" {
  default = "bx2-2x8"
}


variable "prefix" {
  description = "The prefix of VPC."
  type        = string
}

variable "zone" {
  description = "The value of the zone of VPC."
  type        = string
}
