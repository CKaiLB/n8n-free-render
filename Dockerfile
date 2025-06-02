FROM n8nio/n8n

# Copy your workflow
COPY workflow.json /home/node/.n8n/workflow.json

# Copy the entrypoint script into a writable directory
COPY entrypoint.sh /home/node/entrypoint.sh

# Make it executable
RUN chmod +x /home/node/entrypoint.sh

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_HOST=n8n.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Run using your custom entrypoint
ENTRYPOINT ["/home/node/entrypoint.sh"]
