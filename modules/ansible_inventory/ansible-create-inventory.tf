resource "local_file" "ansible_inventory" { 
    content = templatefile("${path.module}/templates/inventory.tpl",
    { 
        server_ips =  (var.server_ips)
        ansible_inventory_group = (var.ansible_inventory_group_name)
    } 
    ) 
    filename = (var.ansible_inventory_path)
}