FROM node:22-slim
RUN npm install -g openclaw@latest
RUN mkdir -p /home/node/.openclaw && echo '{}' > /home/node/.openclaw/openclaw.json
EXPOSE 18789
CMD ["openclaw", "gateway", "--allow-unconfigured", "--bind", "lan", "--port", "18789"]
