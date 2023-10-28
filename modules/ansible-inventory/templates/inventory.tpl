[${ansible_inventory_group}]
%{ for ip in server_ips ~}
${ip}
%{ endfor ~}

%{ if ansible_use_ssh_proxy ~}
[${ansible_inventory_group}:vars]
ansible_ssh_common_args='-o ProxyCommand="ssh -p {ansible_ssh_proxy_port} -W %h:%p -q ${ansible_ssh_proxy_user}@${ansible_ssh_proxy_ip}"'
%{ endif ~}
