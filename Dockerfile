FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN dpkg --configure -a && apt-get update && apt-get install -f -y \
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