FROM ghcr.io/alexta69/metube:latest

WORKDIR /app

# Copy our script into the image
COPY wrapper.sh /app/wrapper.sh
RUN chmod +x /app/wrapper.sh

# Run our script when the container starts
ENTRYPOINT ["/sbin/tini", "-g", "--", "/app/wrapper.sh"]
