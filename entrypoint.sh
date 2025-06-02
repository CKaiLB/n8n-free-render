#!/bin/bash

if [ ! -f "/home/node/.n8n/workflow_imported.flag" ]; then
  echo "Importing workflow..."
  n8n import:workflow --input=/home/node/.n8n/workflow.json
  touch /home/node/.n8n/workflow_imported.flag
else
  echo "Workflow already imported. Skipping."
fi

n8n

