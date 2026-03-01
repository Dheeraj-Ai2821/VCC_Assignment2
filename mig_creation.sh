#!/bin/bash

# Managed Instance Group Creation

gcloud compute instance-groups managed create vcc-mig \
--project=vccassignment2-488901 \
--base-instance-name=vcc-instance \
--size=1 \
--template=vcc-template-20260301-175950 \
--zone=us-central1-c
