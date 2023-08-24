resource "linode_instance" "chatwoot-web" {
    image = "linode/ubuntu22.04"
    label = "Chatwoot"
    group = "chatwoot"
    region = "ca-central"
    type = "g6-standard-1" # 2 vCPU 
    authorized_keys = [ var.vm_public_key ]
    root_pass = var.vm_root_password
}

output "public_ip" {
  value = linode_instance.chatwoot-web.ip_address
}