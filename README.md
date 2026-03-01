# VCC Assignment 2 - GCP Managed Instance Group Deployment

## Project Overview
This repository contains configuration details and deployment documentation for creating a Virtual Machine and Managed Instance Group on Google Cloud Platform.

## Components Configured
- VM Instance (e2-micro)
- Instance Template (vcc-template)
- Managed Instance Group (vcc-mig)
- Autoscaling based on CPU Utilization (70%)
- IAM Role configuration
- Firewall rules (SSH - TCP 22)

## Region
us-central1

## Autoscaling Configuration
Minimum instances: 1
Maximum instances: 2
CPU Target Utilization: 70%

## Firewall Rules
- default-allow-ssh (TCP 22)
- default-allow-icmp
- default-allow-internal
- default-allow-rdp

## IAM Configuration
Principal: m25ai2142@iitj.ac.in
Roles:
- Owner
- Compute Viewer
