variable "alias" {
  type        = string
  description = "The display name of the alias. The name must start with the word `alias` followed by a forward slash."
}


variable "description" {
  type        = string
  default     = "Parameter Store KMS master key"
  description = "The description of the key as viewed in AWS console."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Specifies whether the kms is enabled or disabled."
}

variable "is_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether the key is enabled."
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Deployment region"
}

variable "deletion_window_in_days" {
  type        = number
  default     = 7
  description = "Duration in days after which the key is deleted after destruction of the resource."
}


