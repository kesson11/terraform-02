variable "vm_web_platform" {
  type        = string
  default     = "standard-v1"
  description = "VM WEB platform ID"
}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v1"
  description = "VM DB platform ID"
}

variable "vms_res" {
  type        = map(map(number))
  description = "All VMs resources"
  default     = {
    vm_web_res = {
      cores   = 2
      memory  = 1
      core_fraction = 5
    }
    vm_db_res = {
      cores   = 2
      memory  = 2
      core_fraction = 20
    }
  }
}