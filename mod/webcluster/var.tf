variable "server_port" {
    description = "HTTP"
    default = 9090
}
variable "server_port2" {
    description = "SSH"
    default = 22
}

variable "cluster_name" {
  description = "webcluster resources name"
}

variable "instance_type" {
  description = "type of EC2 Instances"
}

variable "app_data_v2" {
  description = "if true, then enable the new app_data vers."
}
