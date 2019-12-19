
resource "aws_instance" "example" {
  ami           = "var.ami,var.AWS_REGION"//current ami
  instance_type = "t2.micro"
}

#the VPC subnet
subnet_id = "subnet id from aws"

# the security group
vpc_security_group_ids = {"aws_security_group_id"}

#the public SSH key

key_name ="${aws-key_pair.mykeypair.keyname}"


# user data
user_data = ""//data added cloud init.tf file here used variable reffers to render to cloudinitconfig 

}

resource "aws_ebs_volume" "ebs_volume-1" {
  availability_zone = "eu-west-2a" //The Aavalability Zones in aws
   size             = 20 //specify size(Optional) The size of the drive in GiBs.
   type ="gp2" #general purpose storage for archieve data
   tags = {
    Name = "extra volume  data"
	(Optional) A mapping of tags to assign to the resource.
  }
}

resource "aws_ebs_attachment" "ebs_volume-1_attachment" {
#it attached ebs volume to ec2 instance

device name ="dev/xvch"/from var.tf device name

volume_id = "${aws_ebs_volume.ebs_volume-1.id}" #volume id it reffers  to ebs volume

instance_id = "${aws_instance.example.id}" #  instance id 
}    #all are linked to the resources to getter




