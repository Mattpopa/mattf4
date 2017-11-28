provider "aws" {
    region = "eu-central-1"
}
module "dbs" {
    source = "git::git@github.com:Mattpopa/tf_mod.git//dbs/mysql?ref=v1.0.0"
    dbs_pass = "{var.dbs_pass}" 
}
