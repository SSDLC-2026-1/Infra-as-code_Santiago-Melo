# Find a recent Amazon Linux 2 AMI in your configured region
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Obtain default VPC
data "aws_vpc" "default" {
  default = true
}

# Obtain default subnet inside the VPC
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

# Create a Free Tier eligible EC2 instance
resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnets.default.ids[0]

  tags = {
    Name        = "terraform-free-tier-ec2-updated-santiago-melo"
    Environment = "learning-terraform"
    Managed_By  = "Terraform"
  }
}


output "instance_id" {
  value = aws_instance.main.id
}

output "public_ip" {
  value = aws_instance.main.public_ip
}