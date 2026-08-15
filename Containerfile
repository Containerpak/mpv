FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/mpv"

RUN apt-get update && \
    apt-get install -y --no-install-recommends mpv && \
    cpak-clean-junk

COPY mpv.desktop /usr/share/applications/mpv.desktop
COPY icon.png /usr/share/icons/hicolor/128x128/apps/mpv.png

