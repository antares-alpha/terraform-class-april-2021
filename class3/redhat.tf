# data "aws_ami" "redhat" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["Red Hat Enterprise Linux 7.0_HVM_GA"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["188533678645"] # Canonical
# }

# output "REDHAT_AMI_ID" {
#     value = "${data.aws_ami.redhat.id}"
# }