{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": ["s3.amazonaws.com", "lambda.amazonaws.com"]
            },
            "Action": "sts:AssumeRole"
        }
    ]
}