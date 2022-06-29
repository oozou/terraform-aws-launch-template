output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template"
  value       = aws_launch_template.this.arn
}

output "id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.this.id
}
