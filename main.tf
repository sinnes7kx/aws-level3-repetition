
resource "aws_instance" "devops_school_level3" {
  ami                         = var.ami_id
  instance_type               = var.ec2_type
  subnet_id                   = var.subnet_id
  key_name                    = var.keypair
  associate_public_ip_address = true

  vpc_security_group_ids = [var.main_sg_id]

  user_data = templatefile("${path.module}/user-data.web.sh", {
    playbook_content = file("${path.module}/config-and-deploy.web.yml")
  })
  user_data_replace_on_change = true

  tags = {
    Name = var.ec2_name
  }
}
