resource "aws_instance" "Nima" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name       = "Nima"
    Created_by = var.created_by
  }
}

# resource "aws_instance" "Nima2" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   tags = {
#     Name       = var.machine_name
#     created_by = var.created_by
#   }
# }

# module "ec2_nima1" {
#   source        = "./module/ec2"
#   instance_name = "Nima1"
#   key_name      = "falconbird"
# }
# module "ec2_nima2" {
#   source        = "./module/ec2"
#   instance_name = "Nima2"
#   key_name      = "falconbird"
# }