provider "aws" {
    region = "eu-central-1"
}

module "webcluster" {
    source = "../mod/webcluster"
    cluster_name = "stage"
    instance_type = "t2.micro"
    app_data_v2 = true
}

resource "aws_security_group_rule" "allow_apps" {
    type = "ingress"
    security_group_id = "${module.webcluster.elb_security_group_id}"
        from_port = 9090 
        to_port = 9090
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
