# Usar imagem oficial do n8n
FROM n8nio/n8n

# Configurar a porta (Render usa 10000 por padrão)
ENV N8N_PORT=10000
EXPOSE 10000

# Comando padrão
CMD ["n8n", "start"]
