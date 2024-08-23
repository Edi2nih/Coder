FROM gitpod/workspace-full:latest

# Set working directory
WORKDIR /workspace

# Expose port untuk akses Gitpod
EXPOSE 8080

# Jalankan Gitpod
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
