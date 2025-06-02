FROM n8nio/n8n

COPY workflow.json /home/node/.n8n/workflow.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]