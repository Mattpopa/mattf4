output "elb_dns_name" {
    value = "${aws_elb.wip-elb.dns_name}"
}
output "elb_security_group_id" {
    value = "${aws_security_group.elb.id}"
}
output "ec2_dns_name" {
    value = "${aws_instance.wip-020817.dns_name}"
}
output "ec2_ip" {
    value = "${aws_instance.wip-020817.public_ip}"
}
