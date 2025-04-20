FROM bitnami/mongodb:6.0

# Install s5cmd
RUN curl -L https://github.com/peak/s5cmd/releases/download/v2.2.3/s5cmd_2.2.3_Linux-64bit.tar.gz | tar xz && \
    mv s5cmd /usr/local/bin/ && chmod +x /usr/local/bin/s5cmd

# Optional: Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
