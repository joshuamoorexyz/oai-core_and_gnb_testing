#!/bin/bash

# Set environment variables
export DEBIAN_FRONTEND=noninteractive
export TZ=Europe/Paris
git clone https://github.com/aayamrajshakya/containerization.git
cd fed/ci-scripts/
# Install debug tools and mandatory libraries
apt-get update
apt-get upgrade --yes
apt-get install --yes \
  psmisc \
  net-tools \
  ethtool \
  tshark \
  tzdata \
  iperf \
  iproute2 \
  iputils-ping \
  iptables \
  traceroute \
  tcpdump \
  iperf3

# Clean up
rm -rf /var/lib/apt/lists/*

# Copy entrypoint script
cp trfgen_entrypoint.sh /tmp/

# Set entrypoint and default command
chmod +x /tmp/trfgen_entrypoint.sh
/tmp/trfgen_entrypoint.sh

# Keep the script running indefinitely
sleep infinity

