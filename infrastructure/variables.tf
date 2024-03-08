# Define config variables
variable "labelPrefix" {
  type        = string
  default     = "yuan0037"
  description = "Your college username. This will form the beginning of various resource names."
}

variable "region" {
  type= string
  default = "canadacentral"
}
