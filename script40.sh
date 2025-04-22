#!/bin/bash
# Auto-Deploy Static Website (S3)
aws s3 sync ./website s3://my-bucket --delete
aws cloudfront create-invalidation --distribution-id ABCD1234 --paths "/*"
echo "Website deployed and cache invalidated."
