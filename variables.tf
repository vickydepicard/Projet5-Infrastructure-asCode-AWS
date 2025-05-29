# variables.tf

variable "aws_region" {
  description = "La région AWS où déployer l'infrastructure"
  type        = string
  default     = "eu-west-1"
}

variable "ami_id" {
  description = "AMI pour le serveur EC2"
  type        = string
}

variable "instance_type" {
  description = "Type d’instance EC2"
  type        = string
}

variable "instance_name" {
  description = "Nom de la clé SSH"
  type        = string
}

variable "name" {
  description = "Nom du tag de la ressource"
  type        = string
}

variable "environnement" {
  description = "Environnement de déploiement (dev, test, prod)"
  type        = string
}

variable "key_name"{
  description = "Nom de de mon image"
  type        = string
}
