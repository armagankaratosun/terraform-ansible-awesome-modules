resource "local_file" "ansible_inventory" { 
    content = templatefile("${path.module}/templates/inventory.tpl",
    { 
        server_ips =  (var.server_ips)
        ansible_inventory_group = (var.ansible_inventory_group_name)

        ansible_use_ssh_proxy = (var.ansible_use_ssh_proxy)
        ansible_ssh_proxy_user = (var.ansible_ssh_proxy_user)
        ansible_ssh_proxy_ip = (var.ansible_ssh_proxy_ip)
        ansible_ssh_proxy_port = (var.ansible_ssh_proxy_port)
    } 
    ) 
    filename = (var.ansible_inventory_path)
}
