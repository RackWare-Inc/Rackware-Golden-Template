variable "image_url" {
  default     = "cos://us-geo/rackware-rmm-bucket/rmm-v74822-ibm-image-rackwarermmimage.qcow2"
  description = "URL for source VSI image used to spin up instance."
}

variable "TF_VERSION" {
  default     = "1.1"
  description = "Terraform engine version to be used in schematics"
}

variable "ssh_key" {
  description = "The IBM Cloud platform SSH keys."
  type        = string
}

variable "zone" {
  description = "Availability zone of region."
  type        = string
}

variable "resource_group" {
  description = "Resource group name."
}

variable "profile" {
  default     = "bx2-2x8"
  description = "Profile for compute server."
}

variable "vpc_name" {
  description = "The name of VPC."
  type        = string
}

variable "subnet_name" {
  description = "The name of subnet."
  type        = string
}

variable "attach_floating_ip" {
  description = "Do you want to create and attach floating IP address?"
  type        = bool
  default     = false
}

variable "host_name" {
  description = "Unique host name for RMM server."
  type        = string
}
