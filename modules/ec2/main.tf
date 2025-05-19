# EC2 instances

resource "aws_instance" "jenkins_server" {
  ami                    = "ami-087bb587c13dd452f"
  instance_type          = "t3.medium"
  subnet_id              = "subnet-08f0a93ce4c759ac3"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-00cb03109d1987b03",
  ]

  tags = {
    Name = "jenkins-server"
  }
}

resource "aws_instance" "jumpbox_server" {
  ami                    = "ami-0614680123427b75e"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-03381d2966d4e81ba"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-00f03dc70eab28ffe",
  ]

  tags = {
    Name = "jumpbox-server"
  }
}

resource "aws_instance" "WordPress_EC2" {
  ami                    = "ami-0d2614eafc1b0e4d2"
  instance_type          = "t3.medium"
  subnet_id              = "subnet-03381d2966d4e81ba"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-0a1389a99abe57b91",
  ]

  tags = {
    Name = "WordPress-EC2"
  }
}

resource "aws_instance" "NandhuBusStack_DEV" {
  ami                    = "ami-0e35ddab05955cf57"
  instance_type          = "t3a.large"
  subnet_id              = "subnet-08f0a93ce4c759ac3"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-05e4725db4f8490c5",
  ]

  tags = {
    Name = "NandhuBusStack-DEV"
  }
}

resource "aws_instance" "NandhuBusStack_PROD" {
  ami                    = "ami-0e35ddab05955cf57"
  instance_type          = "t3a.large"
  subnet_id              = "subnet-08f0a93ce4c759ac3"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-05e4725db4f8490c5",
  ]

  tags = {
    Name = "NandhuBusStack-PROD"
  }
}

resource "aws_instance" "SB2C_DigitalMarketingStack" {
  ami                    = "ami-0e35ddab05955cf57"
  instance_type          = "t3a.medium"
  subnet_id              = "subnet-08f0a93ce4c759ac3"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-05e4725db4f8490c5",
  ]

  tags = {
    Name = "SB2C-DigitalMarketingStack"
  }
}

resource "aws_instance" "DokployInstance" {
  ami                    = "ami-0e35ddab05955cf57"
  instance_type          = "t3a.medium"
  subnet_id              = "subnet-0419613877f1238d1"
  key_name               = "jumpbox-keypair"
  # The security groups below may need adjustment
  vpc_security_group_ids = [
    "sg-02ea29730d87c4945",
  ]

  tags = {
    Name = "DokployInstance"
  }
}
