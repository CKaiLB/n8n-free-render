FROM n8nio/n8n

# Copy the workflow and script
COPY workflow.json /home/node/.n8n/workflow.json
COPY entrypoint.sh /home/node/entrypoint.sh

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_HOST=n8n.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Use shell to run the script (no need for chmod)
ENTRYPOINT ["sh", "/home/node/entrypoint.sh"]
