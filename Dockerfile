FROM ubuntu:20.04

# Set environment untuk non-interactive install
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies termasuk tzdata untuk timezone
RUN apt-get update && \
    apt-get install -y curl git sudo nodejs npm tzdata

# Set timezone otomatis ke Asia (nomor 6 biasanya untuk Asia/Jakarta)
RUN ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# Clone Cloud9 SDK
RUN git clone https://github.com/c9/core.git /cloud9 && \
    cd /cloud9 && \
    scripts/install-sdk.sh

# Set working directory
WORKDIR /workspace

# Expose port untuk akses Cloud9
EXPOSE 8080

# Jalankan Cloud9 pada port 8080
CMD ["/cloud9/server.js", "--listen", "0.0.0.0", "--port", "8080", "-w", "/workspace"]
