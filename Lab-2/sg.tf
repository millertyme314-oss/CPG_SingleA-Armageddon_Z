# Security Group using TF

resource "aws_security_group" "TF_SG" {
  name        = "Security Group using Terraform"
  description = "Security Group using Terraform"
  vpc_id      = "vpc-09ad4aa9df5e37844"

}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTP" {
  description = "HTTP"
  security_group_id = aws_security_group.TF_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "Allow_SSH" {
  description = "SSH"
  security_group_id = aws_security_group.TF_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "Allow_egress" {
  security_group_id = aws_security_group.TF_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
