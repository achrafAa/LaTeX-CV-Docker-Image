# LaTeX CV Docker Image

This Docker image is designed to simplify the process of building LaTeX-based CVs and resumes. It includes all necessary LaTeX packages and fonts.

## Features
- Full TeXLive installation with XeTeX
- Pre-installed fonts (Roboto, FontAwesome)
- Optimized for modern CV templates

## Quick Start

To build your CV using this Docker image, run:

```bash
docker run --rm --user $(id -u):$(id -g) -w "/doc" -v "$(PWD)":/doc ghcr.io/achrafaamri/latex-cv make
```

This will mount your current directory to the `/cv` volume, where the LaTeX project files are located.

## Included Packages
- texlive-xetex
- texlive-fonts-recommended
- texlive-fonts-extra
- texlive-latex-extra
- fonts-roboto
- fonts-font-awesome

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

