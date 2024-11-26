variable "resource_group" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "security_group_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "ip_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "MONGO_URL"{
    type = string
}
variable "PORT"{
    type = string
}
variable "MONGO_DB"{
    type = string
}
variable "MAIL_SECRET_KEY"{
    type = string
}
variable "MAPBOX_ACCESS_TOKEN"{
    type = string
}
variable "MAIL_SERVICE"{
    type = string
}
variable "MAIL_USER"{
    type = string
}
variable "MONGO_INITDB_ROOT_USERNAME"{
    type = string
}
variable "MONGO_INITDB_ROOT_PASSWORD"{
    type = string
}

variable "DOMAIN"{
    type = string
}