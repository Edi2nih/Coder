# Gunakan image JupyterLab sebagai base image
FROM jupyter/base-notebook:latest

# Install Node.js versi terbaru
USER root
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash - && \
    apt-get install -y nodejs

# Ubah port default JupyterLab menjadi 8080
ENV JUPYTER_PORT=8080
EXPOSE 8080

# Install JupyterLab
RUN pip install jupyterlab

# Set perintah default untuk menjalankan JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root"]
