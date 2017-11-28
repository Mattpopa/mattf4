output "entry_point_dns" {
    value = "${module.webcluster.elb_dns_name}"
}
output "le_public_dns" {
    value = "${module.webcluster.ec2_dns_name}"
}
output "worker_public_ip" {
     value = "${module.webcluster.ec2_ip}"
}
