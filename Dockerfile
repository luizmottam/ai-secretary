FROM node:22-slim
WORKDIR /app
RUN npm install -g openclaw
EXPOSE 18789
CMD ["sh", "-c", "openclaw gateway --port ${PORT:-18789} --bind lan --allow-unconfigured"]
