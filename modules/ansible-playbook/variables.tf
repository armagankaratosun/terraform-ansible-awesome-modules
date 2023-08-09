variable "ansible_remote_user" {
  description = "Remote user for Ansible."
  type        = string
}

variable "ansible_playbook_files" {
  description = "List of Ansible playbook files to run."
  type        = list(string)
}

variable "ansible_ssh_password" {
  description = "Optional SSH password for Ansible remote connections."
  type        = string
  default     = null
}

variable "ansible_ssh_key_path" {
  description = "Optional path to the SSH private key for Ansible remote connections."
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "ansible_files_path" {
  description = "Path to the directory containing Ansible files (playbooks and inventory)."
  type        = string
}

variable "ansible_inventory_file" {
  description = "Name of the Ansible inventory file."
  type        = string
  default     = "hosts"
}
