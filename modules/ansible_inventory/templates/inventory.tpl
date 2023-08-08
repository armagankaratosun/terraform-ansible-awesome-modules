[${ansible_inventory_group}]
%{ for ip in server_ips ~}
${ip}
%{ endfor ~}