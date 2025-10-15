# Usa a imagem oficial e estável do n8n
FROM n8nio/n8n:latest

# Render define automaticamente a variável $PORT
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_ENCRYPTION_KEY=chaveDeTeste123
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV WEBHOOK_TUNNEL_URL=${RENDER_EXTERNAL_URL}
ENV N8N_HOST=${RENDER_EXTERNAL_URL}

# Exponha a porta para o Render
EXPOSE 10000

# Comando para iniciar o n8n
CMD ["n8n", "start"]
