FROM node:20-alpine
WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm install --omit=dev

COPY server.js ./
COPY public ./public

# Render fournit la variable PORT automatiquement
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "server.js"]
