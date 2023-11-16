resource "aws_instance" "openvpn" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  key_name      = "devopsdude.pem"
  tags = {
    Name = "openvpn"
  }
}

resource "aws_instance" "db_host" {
  ami           = "ami-0c55b159cbfafe1f0" # Veritabanı sunucusu için uygun bir AMI seçmelisiniz.
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id
  key_name      = "devopsdude.pem"
  tags = {
    Name = "db-host"
  }
}