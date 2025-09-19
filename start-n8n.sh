#!/bin/bash

# Get the Codespace URL dynamically
if [ -n "$CODESPACE_NAME" ]; then
    export WEBHOOK_URL="https://${CODESPACE_NAME}-5678.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
    export N8N_EDITOR_BASE_URL="https://${CODESPACE_NAME}-5678.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
    
    echo "==================================="
    echo "n8n will be available at:"
    echo "$N8N_EDITOR_BASE_URL"
    echo "==================================="
fi

# Create necessary directories
mkdir -p ~/.n8n workflows backup

# Start n8n with environment variables
N8N_HOST=0.0.0.0 \
N8N_PORT=5678 \
N8N_PROTOCOL=https \
WEBHOOK_URL=http://localhost:5000/\
N8N_EDITOR_BASE_URL=http://localhost:5678/ \
n8n start
