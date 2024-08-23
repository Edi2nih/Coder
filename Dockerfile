# Gunakan image dasar resmi dari Coder
FROM codercom/code-server:latest

# Set working directory
WORKDIR /home/coder

# Expose port untuk akses ke server
EXPOSE 8080

# Menjalankan code-server dan menampilkan password
CMD bash -c "code-server --bind-addr 0.0.0.0:8080 & sleep 2 && cat /home/coder/.config/code-server/config.yaml && wait"
