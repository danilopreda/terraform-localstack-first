resource "aws_instance" "app_server" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_a.id # Referência cruzada entre arquivos

  tags = {
    Name = "server-01"
  }
}