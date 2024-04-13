data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    # these = signs don't line up
    name = "name"
    values    = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  # here's some trailing whitespace                    
  filter {
    # these = signs don't line up
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  # these = signs don't line up
  ami = data.aws_ami.ubuntu.id
  instance_type     = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

# this next line ends all the way over here ----------------------------------------------- >
# look at all these extra newlines                                                           
# ... you may have to look at it in "raw" mode on github.com though to see them












