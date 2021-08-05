resource "aws_instance" "web" {
  count          = var.instance_count
  ami            = var.ami
  instance_type  = var.instance_type

  tags = {
      Name  = element(var.instance_tags, count.index)
    }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 8
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web[0].id}"
}

