{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "s3:Get*",
                "s3:List*",
                "s3:Describe*",
                "s3-object-lambda:Get*",
                "s3-object-lambda:List*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        },
        {
            "Action": [
                "cloudwatch:GetMetricData",
                "cloudwatch:ListMetrics",
                "logs:DescribeLogGroups",
                "lambda:Get*",
                "lambda:List*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        },
        {
            "Action": [
                "logs:DescribeLogStreams",
                "logs:GetLogEvents",
                "logs:FilterLogEvents",
                "logs:StartQuery",
                "logs:StopQuery",
                "logs:DescribeQueries",
                "logs:GetLogGroupFields",
                "logs:GetLogRecord",
                "logs:GetQueryResults"
            ],
            "Effect": "Allow",
            "Resource": "arn:aws:logs:*:${account_id}:log-group:/aws/lambda/*"
        }
    ]
}