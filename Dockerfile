FROM --platform=$BUILDPLATFORM alpine:3.19 AS builder

# Install minimal TeX packages for building
RUN apk add --no-cache \
    texlive-xetex \
    && rm -rf /var/cache/apk/*

# Create a final minimal image
FROM --platform=$BUILDPLATFORM alpine:3.19

# Install only essential tools and fonts
RUN apk add --no-cache \
    make \
    font-roboto \
    font-awesome \
    && rm -rf /var/cache/apk/*

# Copy only absolutely necessary files from builder
COPY --from=builder /usr/bin/xelatex /usr/bin/
COPY --from=builder /usr/share/texmf-dist/tex /usr/share/texmf-dist/tex
COPY --from=builder /usr/share/texmf-dist/fonts /usr/share/texmf-dist/fonts
COPY --from=builder /usr/share/texmf-dist/web2c /usr/share/texmf-dist/web2c

# Set working directory for CV building
WORKDIR /doc

CMD ["make"] 