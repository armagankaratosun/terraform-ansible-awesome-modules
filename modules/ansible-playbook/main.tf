resource "null_resource" "generate_ansible_config" {
  triggers = {
    remote_user     = var.ansible_remote_user
    ssh_password    = var.ansible_ssh_password
    ssh_key_path    = var.ansible_ssh_key_path
    files_path      = var.ansible_files_path
    inventory_file  = var.ansible_inventory_file
  }

  provisioner "local-exec" {
    command = <<-EOT
      echo '[defaults]
      remote_user = ${var.ansible_remote_user}
      ssh_pass = ${var.ansible_ssh_password == null ? "" : var.ansible_ssh_password}
      private_key_file = ${var.ansible_ssh_key_path}' > ${var.ansible_files_path}/ansible.cfg
    EOT
  }
}

resource "null_resource" "run_ansible_playbooks" {
  triggers = {
    # Add triggers if needed, to force re-running the playbooks based on changes.
    timestamp = timestamp()
  }

  depends_on = [null_resource.generate_ansible_config]

  count = length(var.ansible_playbook_files)

  provisioner "local-exec" {
    command = "ansible-playbook -i ${var.ansible_files_path}/${var.ansible_inventory_file} -c local ${var.ansible_files_path}/${var.ansible_playbook_files[count.index]}"
    working_dir = var.ansible_files_path

  }
}

