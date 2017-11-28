provider "aws" {
    region = "eu-central-1"
}

resource "aws_iam_user" "wip-iam" {
    count = "${length(var.users)}"
    name = "${element(var.users, count.index)}"
}
 
