variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  default     = "amgl"
}

variable "course" {
  description = "Sigla del curso"
  type        = string
  default     = "AUY1105"
}