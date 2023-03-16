resource "aws_instance" "romen_rakam" {
    ami = data.aws_ami.tf_ami.id
    instance_type = "t2.micro"
    key_name = "second-key"
    security_groups = [ "tf-romen-numbers-sg" ]
    user_data = filebase64("user-data.sh")
    tags = {
      "Name" = "terraform-ile-roman-numbers"
    }
  
}