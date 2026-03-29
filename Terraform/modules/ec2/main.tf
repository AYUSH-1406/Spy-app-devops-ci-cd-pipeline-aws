resource "aws_instance" "jenkins" {
  ami                    = var.ami
  instance_type          = "m7i-flex.large"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name


  tags = {
    Name = "Jenkins-Server"
  }
}

resource "aws_instance" "sonarqube" {
  ami                    = var.ami
  instance_type          = "m7i-flex.large"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name

  tags = {
    Name = "SonarQube-Server"
  }
}

resource "aws_instance" "nexus" {
  ami                    = var.ami
  instance_type          = "m7i-flex.large"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name

  tags = {
    Name = "Nexus-Server"
  }
}

resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = "m7i-flex.large"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name

  tags = {
    Name = "App-Server"
  }
}