### Ansible Variables ###
variable ansible_inventory_path {
   type = string
   description = "path to create the hosts file"
   default = "./ansible/hosts"  # Path to your ansible inventory yaml
}
variable ansible_inventory_group_name {
   type = string
   description = "ansible hosts file group name"
   default = "servers"  
}
variable server_ips {
   type = list
   description = "ip addresses of the vms"
}

### SSH Proxy Variables ###

variable "ansible_use_ssh_proxy" {
  description = "boolean to determine if SSH proxy should be used"
  type        = bool
  default     = false
}

variable "ansible_ssh_proxy_user" {
  description = "ssh proxy username"
  type        = string
}

variable "ansible_ssh_proxy_ip" {
  description = "ssh proxy ip address"
  type        = string
}

variable "ansible_ssh_proxy_port" {
  description = "ssh proxy port"
  type        = string
  default     = "22"
}

