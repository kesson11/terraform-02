###cloud vars

variable "cloud_id" {
  type        = string
  default     = "b1g76gao9plkjf86q95m"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gtfaltt06t89f5r4m9"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "zone" {
  type        = string
  default     = "develop"
}
variable "project" {
  type        = string
  default     = "platform"
}
variable "webhost" {
  type        = string
  default     = "web"
} 
variable "dbhost" {
  type        = string
  default     = "db"
}

###ssh vars


variable "all_vms_ssh_root_key" {
type        = map(string)
default     =  {
    serial-port-enable = 1
    ssh-keys  = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKVzzVYjUFT5PNXSGcZ+/v5lH/gLcxSPB7D/Xx5TP+T9 kes@localhost.localdomain"
    }
description = "all vms metadata"
sensitive = true
}