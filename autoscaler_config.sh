#!/bin/bash
set -e

# Autoscaler Configuration for Managed Instance Group

gcloud compute instance-groups managed set-autoscaling vcc-mig \
--project=vccassignment2-488901 \
--zone=us-central1-c \
--min-num-replicas=1 \
--max-num-replicas=3 \
--target-cpu-utilization=0.70 \
--cool-down-period=60
