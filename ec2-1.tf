# resource "aws_ebs_volume" "novo-volume-terraform" {
#   availability_zone = "us-east-1a"
#   size = 20

#   tags = {
#     Name = "Hello-terraform"
#   }
# }

resource "aws_instance" "ec2-terraform01" {
  ami = "ami-0e86e20dae9224db8"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  tags = {
    Name = "ec2-terraform1"
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 20
    volume_type = "gp3"
  }
}