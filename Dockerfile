FROM --platform=$BUILDPLATFORM alpine:3.19

# Install required packages
RUN apk add --no-cache \
    texlive-xetex \
    texlive \
    texmf-dist-fontsextra \
    texmf-dist-latexextra \
    font-roboto \
    font-awesome \
    make

# Set working directory
WORKDIR /doc

# Set default command
CMD ["make"] 