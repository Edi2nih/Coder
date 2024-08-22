# Gunakan image dasar yang ringan
FROM ubuntu:20.04

# Set lingkungan non-interaktif untuk menghindari prompt
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl sudo && \
    rm -rf /var/lib/apt/lists/*

# Membuat user non-root
RUN useradd -m coderuser && \
    echo "coderuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Ganti ke user non-root
USER coderuser

# Install Coder for Teams menggunakan skrip resmi
RUN curl -L https://coder.com/install.sh | sh

# Expose port yang diperlukan (misal: 3000)
EXPOSE 8080

# Set working directory
WORKDIR /home/coderuser

# Menjalankan Coder for Teams sebagai user non-root
CMD ["coder", "server"]
