# terraform-ansible-awesome-modules 😎

Welcome to Armagan's Awesome Terraform Modules for Ansible! This repository contains several sub-modules to effortlessly run Ansible Playbooks with Terraform. Each sub-module has its own `README` file to thoroughly describe its usage and the variables it contains.

**This Terraform module is still in progress. Use it with caution**

## 📂 Sub-modules

* ansible-inventory 🖥️
* ansible-playbook 📸

## 🚀 Usage

### Step 1: Configure the Provider
In progress

```
```
### Step 2: Utilize the Sub-modules
Now, you can utilize the sub-modules to provision virtual machines and create virtual machine snapshots. Simply refer to the sub-modules like this:

```
module "ansible_inventory" {
  source  = ""
  version = ""  
```
or

```
```

Please take a look at each sub-module's README.md file for more details and variables. Additionally, example .tf files for each sub-module can be found under the examples directory.

### Step 3: Run Terraform

You can simply initiate terraform with `terraform init`, then run `terraform plan` and `terraform apply` to create your virtual machines and virtual machine snapshots.


## 🛠️ Requirements

* Terraform >= 1.3

## 📜 License

This project is licensed under the GPL-3.0 license.

Feel free to contribute and add more awesome features! 🎉💪😊