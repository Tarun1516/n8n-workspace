#!/bin/bash

# Get the Codespace URL
export WEBHOOK_URL="https://${CODESPACE_NAME}-5678.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
export N8N_EDITOR_BASE_URL="https://${CODESPACE_NAME}-5678.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"

echo "Starting n8n..."
echo "Access URL will be: $WEBHOOK_URL"

# Create n8n data directory
mkdir -p ~/.n8n

# Start n8n
n8n start
