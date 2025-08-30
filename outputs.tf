output "latest_version" {
  description = "The latest version of the launch template"
  value       = aws_launch_template.this.latest_version 
}

output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template"
  value       = aws_launch_template.this.arn
}

output "id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.this.id
}
