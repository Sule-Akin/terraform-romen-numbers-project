data "aws_ami" "tf_ami" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
   filter {
    name = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
   }
}
