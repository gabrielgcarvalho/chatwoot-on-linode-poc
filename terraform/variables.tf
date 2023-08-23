variable "linode_api_token" {
  type = string
  sensitive = true
}

variable "vm_public_key" {
  type = string
  sensitive = true
}

variable "vm_root_password" {
  type = string
  sensitive = true
}