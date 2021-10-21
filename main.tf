# Description : This terraform module creates a KMS Customer Master Key (CMK) and its alias.
resource "aws_kms_key" "default" {
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
  is_enabled              = var.is_enabled
}

# Description : Provides an alias for a KMS customer master key..
resource "aws_kms_alias" "default" {
  name          = coalesce(format("alias/%v", var.alias))
  target_key_id = aws_kms_key.default.key_id
}