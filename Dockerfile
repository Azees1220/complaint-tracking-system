# Multi-stage Docker build for cross-platform deployment
FROM node:18-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application files
COPY . .

# Build stage if needed
RUN npm run build 2>/dev/null || true

# Production stage
FROM node:18-alpine

WORKDIR /app

# Install serve to run static content
RUN npm install -g serve

# Copy from builder
COPY --from=builder /app .

# Expose port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000', (r) => {if (r.statusCode !== 200) throw new Error(r.statusCode)})"

# Start command
CMD ["serve", "-s", ".", "-l", "3000"]
