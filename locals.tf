locals {
  prefix = "${var.prefix}-${var.environment}-${var.name}"
  security_group_ids = var.vpc_security_group_ids
}
