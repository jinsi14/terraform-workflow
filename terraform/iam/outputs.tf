
output "role_arn" {
  value = aws_iam_role.developer_role.arn
}

output "policy_arn" {
  value = aws_iam_policy.developer_policy.arn
}
