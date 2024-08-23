# Gunakan image OpenVSCode dari Gitpod
FROM gitpod/openvscode-server:latest

# Set working directory ke home/workspace
WORKDIR /home/workspace

# Expose port 8080 sesuai dengan host
EXPOSE 8080

# Set entrypoint untuk menjalankan OpenVSCode pada port 8080
ENTRYPOINT ["openvscode-server", "--port", "8080", "--host", "0.0.0.0", "/home/workspace"]
