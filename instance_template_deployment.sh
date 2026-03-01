#!/bin/bash
set -e

# Instance Template Creation Command
gcloud beta compute instance-templates create vcc-template-20260301-175950 \
--project=vccassignment2-488901 \
--machine-type=e2-micro \
--network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
--instance-template-region=us-central1 \
--maintenance-policy=MIGRATE \
--provisioning-model=STANDARD \
--service-account=357127869557-compute@developer.gserviceaccount.com \
--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
--enable-display-device \
--tags=http-server,https-server \
--create-disk=auto-delete=yes,boot=yes,device-name=vcc-template-20260301-175950,image=projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20260226,mode=rw,size=10,type=pd-standard \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any
