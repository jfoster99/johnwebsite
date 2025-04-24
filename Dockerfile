# Build stage
FROM nginx:1.24-alpine AS builder

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy website files
COPY src/index.html ./
COPY src/css ./css/
# COPY src/js ./js/
# COPY src/images ./images/
# COPY modules ./modules/

# Set proper permissions for all files
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    find /usr/share/nginx/html -type f -exec chmod 644 {} \;

# Final stage
FROM nginx:1.24-alpine

# Copy nginx configuration
COPY k8s/nginx.conf /etc/nginx/nginx.conf

# Create required directories with proper permissions
RUN mkdir -p /var/cache/nginx /var/run && \
    chown -R nginx:nginx /var/cache/nginx /var/run /etc/nginx/conf.d && \
    chmod -R 755 /var/cache/nginx /var/run && \
    # Remove default nginx static content
    rm -rf /usr/share/nginx/html/* && \
    # Fix permissions on /etc/nginx
    chmod -R 755 /etc/nginx

# Copy built static files from builder stage
COPY --from=builder --chown=nginx:nginx /usr/share/nginx/html /usr/share/nginx/html

# Switch to non-root user
USER nginx

# Expose port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
    CMD wget -q --spider http://localhost:8080/ || exit 1