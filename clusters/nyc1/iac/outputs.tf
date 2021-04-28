output "master_nodes_private" {
    value = concat(digitalocean_droplet.kubic_master.*.ipv4_address_private,digitalocean_droplet.kubic_first_master.*.ipv4_address_private)
}

output "first_master_nodes_private" {
    value = digitalocean_droplet.kubic_first_master.*.ipv4_address_private
}

# The Private IPv4 Addresses of the worker droplets
output "worker_nodes_private" {
    value = digitalocean_droplet.kubic_worker.*.ipv4_address_private
}

# The control-plane address output
output "load_balancer" {
    value = digitalocean_loadbalancer.kubic_k8s.ip
}

output "traefik_lb_proxy_proto" {
    value = digitalocean_loadbalancer.traefik_lb.ip
}
