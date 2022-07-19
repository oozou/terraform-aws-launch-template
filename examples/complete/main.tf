provider "aws" {
  region = "us-east-2"
}



module "ec2_template" {
  source = "../.."

  #general
  prefix      = "oozou"
  environment = "dev"
  name        = "example"
  tags = { workspace = "test-workspace" }

  #template configure
  #   user_data                              = var.user_data
  block_device_mappings = [{
    device_name = "/dev/sda1"
    ebs = {
      volume_size = 20
      volume_type = "gp3"
    }
  }]
  ami_id                    = "ami-00f6c910b8daeb523"
  key_name                  = "example-key"
  vpc_security_group_ids    = ["sg-xxxxx"]
  ebs_optimized             = true
  instance_type             = "t2.micro"
  disable_api_termination   = true #enables EC2 instance termination protection
  enable_monitoring         = true
  placement                 = {
                                availability_zone = "us-west-2a"
                              }
  network_interfaces        = [{associate_public_ip_address = true}]
  iam_instance_profile      = {
                                name = "oozou-test-role"
                              }
}
