output "vms" {

  value = [
    { vm_web_data = [yandex_compute_instance.platform.name,yandex_compute_instance.platform.network_interface[0].nat_ip_address, yandex_compute_instance.platform.fqdn ] },
    { vm_db_data = [yandex_compute_instance.platformdb.name,yandex_compute_instance.platformdb.network_interface[0].nat_ip_address, yandex_compute_instance.platformdb.fqdn  ] }
  ]
}