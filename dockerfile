# Step 1: Use an official Nginx image
FROM nginx:alpine

# Step 2: Copy your HTML files into Nginx web directory
COPY . /usr/share/nginx/html

# Step 3: Expose port 80 for web traffic
EXPOSE 80

# Step 4: Start Nginx (automatically done by base image)
CMD ["nginx", "-g", "daemon off;"]
