# VPC Outputs
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

# Security Group
output "security_group_id" {
  value = module.security_groups.sg_id
}

# EC2 Public IPs
output "jenkins_public_ip" {
  value = module.ec2.jenkins_ip
}

output "sonarqube_public_ip" {
  value = module.ec2.sonarqube_ip
}

output "nexus_public_ip" {
  value = module.ec2.nexus_ip
}