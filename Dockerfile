FROM n8nio/n8n

# Copy your workflow export
COPY workflow.json /home/node/.n8n/workflow.json

# Add a startup script to import the workflow only once
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_HOST=n8n.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Use entrypoint to import workflow and launch n8n
ENTRYPOINT ["/entrypoint.sh"]
