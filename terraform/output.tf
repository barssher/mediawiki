#output "internal_ip" {
#  value = [for vm in yandex_compute_instance.vm : vm.network_interface[0].ip_address]
#}
#
#output "external_ip" {
#  value = [for vm in yandex_compute_instance.vm : vm.network_interface[0].nat_ip_address]
#}
output "proxy"{
  value = yandex_compute_instance.vm[0].network_interface[0].nat_ip_address
}

output "backend" {
  value = [
    for idx in [1,2]: yandex_compute_instance.vm[idx].network_interface[0].nat_ip_address
  ]
  }