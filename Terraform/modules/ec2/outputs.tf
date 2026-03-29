output "jenkins_ip" {
  value = aws_instance.jenkins.public_ip
}

output "sonarqube_ip" {
  value = aws_instance.sonarqube.public_ip
}

output "nexus_ip" {
  value = aws_instance.nexus.public_ip
}

output "app_server_ip" {
  value = aws_instance.app_server.public_ip
}