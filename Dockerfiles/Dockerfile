
FROM node:18-alpine AS builder

# Set working directory for build stage
WORKDIR /app

# Install dependencies in a separate build stage
#RUN npm install --production

FROM node:18-alpine

# Copy only the application code (excluding node_modules)
COPY --from=builder /app/package*.json ./
#COPY --from=builder /app/prime-number-web3.js ./

# Set user for the application process
RUN adduser --disabled-password --shell /bin/sh nodeuser

USER nodeuser

# Expose port (optional)
EXPOSE 3000

# Start the application
CMD [ "node", "prime-number-web3.js" ]
