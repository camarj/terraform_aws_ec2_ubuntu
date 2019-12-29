resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  key_name = "camarj"
  vpc_security_group_ids = ["sg-0fe75f088a2d00c5a"]

  tags = {name = "test-instance"}
}