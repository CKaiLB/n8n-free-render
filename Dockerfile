FROM n8nio/n8n

COPY workflow.json /home/node/.n8n/workflow.json
COPY entrypoint.sh /home/node/entrypoint.sh
USER root
RUN chmod +x /home/node/entrypoint.sh && \
    chown node:node /home/node/entrypoint.sh
USER node

WORKDIR /home/node
ENTRYPOINT ["./entrypoint.sh"]