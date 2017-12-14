FROM node:8.9.3-slim


ENV METEOR_ALLOW_SUPERUSER=true
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends git make g++ locales \
  && locale-gen en_US.UTF-8 \
  && apt-get clean \
  && rm /var/lib/apt/lists/*_*
