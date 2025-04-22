#!/bin/bash
# Auto-Scale Cloud Instances (AWS Example)
instance_count=$(aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].InstanceId" --output text | wc -w)
if [ "$instance_count" -lt 2 ]; then
    aws ec2 run-instances --image-id ami-12345678 --count 1 --instance-type t2.micro
    echo "Launched new instance"
fi
