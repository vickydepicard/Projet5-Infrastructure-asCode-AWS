# terraform.tfvars

aws_region     = "eu-west-1"
ami_id         = "ami-0f9de6e2d2f067fca"       # 🔁 À adapter selon ta région
instance_type  = "t2.micro"
instance_name  = "cle-ssh-devops"
name           = "serveur-dev"
environnement  = "dev"
bucket_name = "mon-bucket-suphotio-terraform"
key_name = "launch-wizard-1"

