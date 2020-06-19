resource "null_resource" "mine" {
    triggers = {
        always_run = "${timestamp()}"
    }    
  depends_on = ["aws_instance.web1"]
  provisioner   "remote-exec" {
    connection {
        host        = "${aws_instance.web.public_ip}"
        type        = "ssh"
        user        = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "sudo yum install -y epel-release -y",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo yum install telnet -y",
      "sudo useradd bob",
      "sudo yum install jenkins -y"
      
    ]
  },
  provisioner   "file" {
    connection {
        host        = "${aws_instance.web.public_ip}"
        type        = "ssh"
        user        = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    source  =  "testfile"
    destination = "/tmp/"
  }
}
