FROM --platform=$BUILDPLATFORM alpine:3.19 AS builder

# Install minimal TeX packages for building
RUN apk add --no-cache \
    make \
    texlive-xetex \
    texlive \
    font-roboto \
    font-awesome \
    && rm -rf /var/cache/apk/*

# Create a minimal TeX environment
WORKDIR /texlive

# Create a final minimal image
FROM --platform=$BUILDPLATFORM alpine:3.19

# Copy only necessary files from builder
COPY --from=builder /usr/bin/xelatex /usr/bin/
COPY --from=builder /usr/bin/make /usr/bin/
COPY --from=builder /usr/share/texmf-dist /usr/share/texmf-dist
COPY --from=builder /usr/share/fonts /usr/share/fonts

# Set required environment variables
ENV PATH="/usr/bin:${PATH}"

# Set working directory for CV building
WORKDIR /doc

CMD ["make"] 