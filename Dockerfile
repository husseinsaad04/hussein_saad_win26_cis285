# Use Default Linux Universal image as base
FROM mcr.microsoft.com/devcontainers/universal:linux

# Set working directory
WORKDIR /workspace

# Install Express.js globally
RUN npm install -g express express-generator

# Install Next.js globally
RUN npm install -g next react react-dom

# Create Next.js frontend app
RUN npx create-next-app@latest frontend --typescript --eslint --no-tailwind --src-dir --app --import-alias "@/*" --yes

# Create Express.js backend app
RUN mkdir -p backend && cd backend && npm init -y && npm install express

# Expose ports
EXPOSE 3000 5000

# Default command
CMD ["bash"]