FROM node:20-slim
RUN npm install -g openclaw@latest
RUN mkdir -p /home/node/.openclaw && echo '{}' > /home/node/.openclaw/openclaw.json
EXPOSE 18789
CMD ["openclaw", "gateway", "--allow-unconfigured", "--bind", "0.0.0.0", "--port", "18789"]
