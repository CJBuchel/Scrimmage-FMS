#!/bin/bash

# Variables
SERVICE_NAME=fms.service
SERVICE_PATH=/etc/systemd/system/$SERVICE_NAME

# Check if the script is run with superuser privileges
if [ "$(id -u)" -ne "0" ]; then
    echo "This script must be run as root." >&2
    exit 1
fi

# Copy the service file to /etc/systemd/system
echo "Copying service file to $SERVICE_PATH..."
cp ./fms.service $SERVICE_PATH

# Reload systemd to recognize the new service
echo "Reloading systemd daemon..."
systemctl daemon-reload

# Enable the service to start on boot
echo "Enabling $SERVICE_NAME to start on boot..."
systemctl enable $SERVICE_NAME

# Start the service
echo "Starting $SERVICE_NAME..."
systemctl start $SERVICE_NAME

# Check the status of the service
echo "Checking the status of $SERVICE_NAME..."
systemctl status $SERVICE_NAME

echo "Service setup complete."