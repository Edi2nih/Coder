FROM eclipse/che-server:latest

# Expose port yang dibutuhkan oleh Eclipse Che
EXPOSE 8080

# Set working directory
WORKDIR /workspace

# Jalankan Eclipse Che server
CMD ["che", "start"]
