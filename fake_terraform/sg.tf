resource "aws_security_group" "allow_app_prod" {
  name        = "allow_node_app_prod"
  description = "Allow node app inbound traffic"
  vpc_id      = aws_vpc.fake-prod-vpc.id

  ingress {
    description = "node app allow from prod VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.fake-prod-vpc.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_node_app_prod"
  }
}

resource "aws_security_group" "allow_app_stage" {
  name        = "allow_node_app_stage"
  description = "Allow node app inbound traffic"
  vpc_id      = aws_vpc.fake-stage-vpc.id

  ingress {
    description = "node app allow from staging VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.fake-stage-vpc.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_node_app_stage"
  }
}
