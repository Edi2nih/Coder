# Gunakan image dasar yang ringan
FROM ubuntu:20.04

# Set lingkungan non-interaktif untuk menghindari prompt
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl sudo && \
    rm -rf /var/lib/apt/lists/*

# Install Coder for Teams menggunakan skrip resmi
RUN curl -L https://coder.com/install.sh | sh

# Expose the Coder port (misal: 3000)
EXPOSE 8080

# Set entrypoint untuk menjalankan Coder for Teams
CMD ["coder", "server"]
