FROM theiaide/theia-full:latest

# Set working directory
WORKDIR /home/project

# Expose port sesuai kebutuhan
EXPOSE 8080

# Jalankan Theia pada port 8080
CMD ["yarn", "start", "/home/project", "--hostname", "0.0.0.0", "--port", "8080"]
