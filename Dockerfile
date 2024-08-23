FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl git sudo nodejs npm

# Clone Cloud9 SDK
RUN git clone https://github.com/c9/core.git /cloud9 && \
    cd /cloud9 && \
    scripts/install-sdk.sh

# Set working directory
WORKDIR /workspace

# Expose port sesuai kebutuhan
EXPOSE 8080

# Jalankan Cloud9 pada port 8080
CMD ["/cloud9/server.js", "--listen", "0.0.0.0", "--port", "8080", "-w", "/workspace"]
