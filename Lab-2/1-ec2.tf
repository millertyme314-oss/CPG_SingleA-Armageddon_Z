resource "aws_instance" "Lab2-TF" {
  ami           = "ami-00a9f44477dd83e3d"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.TF_SG.id]

  tags = {
    Name = "Lab2-TF"
  }
}