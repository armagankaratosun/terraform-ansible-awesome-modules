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