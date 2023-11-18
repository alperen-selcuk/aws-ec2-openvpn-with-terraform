resource "aws_instance" "openvpn" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  key_name      = var.key_name
  associate_public_ip_address = true
  tags = {
    Name = "openvpn"
  }
}

resource "aws_instance" "db_host" {
  ami           = data.aws_ami.ubuntu.id # Veritabanı sunucusu için uygun bir AMI seçmelisiniz.
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private.id
  vpc_security_group_ids      = [aws_security_group.inline.id]
  key_name      = var.key_name
  tags = {
    Name = "db-host"
  }
}