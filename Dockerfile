FROM --platform=$BUILDPLATFORM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install required packages in a single layer
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    fonts-roboto \
    fonts-font-awesome \
    make \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Set working directory
WORKDIR /doc

# Set default command
CMD ["make"] 