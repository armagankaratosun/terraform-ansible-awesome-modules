output "ansible_playbook_outputs" {
  value = tomap({
    for idx, _ in var.ansible_playbook_files : idx => "Output for ${var.ansible_playbook_files[idx]}"
  })
}