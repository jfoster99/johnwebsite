PS C:\Users\jfost\johnwebsite> kubectl port-forward svc/website-service 3040:3040 --address='0.0.0.0'                   
Unable to listen on port 3040: Listeners failed to create with the following errors: [unable to create listener: Error listen tcp4 0.0.0.0:3040: bind: Only one usage of each socket address (protocol/network address/port) is normally permitted.]
error: unable to listen on any of the requested ports: [{3040 8080}]FROM nginx:stable

# Remove default nginx static content
RUN rm -rf /usr/share/nginx/html/* && \
    mkdir -p /usr/share/nginx/html

# Copy website files
COPY src/* /usr/share/nginx/html/
COPY src/css /usr/share/nginx/html/css/
COPY src/js /usr/share/nginx/html/js/
COPY src/images /usr/share/nginx/html/images/
COPY modules /usr/share/nginx/html/modules/

# Set proper permissions
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    chmod 644 /usr/share/nginx/html/*.html

# Copy nginx configuration
COPY k8s/nginx.conf /etc/nginx/nginx.conf

# Switch to non-root user
USER nginx