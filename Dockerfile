# Gunakan image dasar resmi dari Coder
FROM codercom/code-server:latest

# Set working directory
WORKDIR /home/coder

# Salin file konfigurasi, jika ada
# COPY config.yaml /home/coder/.config/code-server/config.yaml

# Expose port untuk akses ke server
EXPOSE 8080

# Menjalankan code-server saat container dijalankan
CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
