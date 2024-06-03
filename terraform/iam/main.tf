# Provider Configuration
provider "aws" {
  region = var.region
}

# IAM Role
resource "aws_iam_role" "developer_role" {
  name = format("%s-iam-%s-%s-role", var.prefix_company, var.lob, var.application)

  assume_role_policy = templatefile("./configs/common/iam/iam_role/digi-iam-developer-read-role.tpl", {})
  tags = local.tags
}

# IAM Policy for the Role
resource "aws_iam_policy" "developer_policy" {
  name        = format("%s-iam-%s-%s-policy", var.prefix_company, var.lob, var.application)
  description = "A developer policy with read only access"

  policy = templatefile("./configs/common/iam/iam_policy/digi-iam-developer-read-policy.tpl", 
  {
    account_id = data.aws_caller_identity.current.account_id
    #account_id = var.account_id
  })
  tags = local.tags
}

# Attach the Policy to the Role
resource "aws_iam_role_policy_attachment" "role_attachment" {
  role       = aws_iam_role.developer_role.name
  policy_arn = aws_iam_policy.developer_policy.arn
}

# Attach the AWS Managed Policy to the Role
resource "aws_iam_role_policy_attachment" "managed_policy_attachment" {
  role       = aws_iam_role.developer_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonConnectReadOnlyAccess"
}

