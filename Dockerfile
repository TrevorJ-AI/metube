FROM ghcr.io/alexta69/metube:latest
WORKDIR /app
COPY cookies.txt /app/cookies.txt
ENV YTDL_OPTIONS='{"cookiefile":"/app/cookies.txt"}'
