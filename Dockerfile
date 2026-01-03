# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to nginx folder
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY javascript.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

