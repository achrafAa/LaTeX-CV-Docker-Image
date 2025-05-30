# LaTeX CV Docker Image

[![Docker Hub](https://img.shields.io/docker/pulls/aachraf/latex-cv-docker?style=flat-square&logo=docker&logoColor=white&label=Docker%20Pulls)](https://hub.docker.com/r/aachraf/latex-cv-docker)
[![Docker Image Size](https://img.shields.io/docker/image-size/aachraf/latex-cv-docker?style=flat-square&logo=docker&logoColor=white)](https://hub.docker.com/r/aachraf/latex-cv-docker)
[![GitHub Stars](https://img.shields.io/github/stars/achrafAa/LaTeX-CV-Docker-Image?style=flat-square&logo=github)](https://github.com/achrafAa/LaTeX-CV-Docker-Image)
[![GitHub Forks](https://img.shields.io/github/forks/achrafAa/LaTeX-CV-Docker-Image?style=flat-square&logo=github)](https://github.com/achrafAa/LaTeX-CV-Docker-Image)
[![License](https://img.shields.io/github/license/achrafAa/LaTeX-CV-Docker-Image?style=flat-square)](https://github.com/achrafAa/LaTeX-CV-Docker-Image/blob/main/LICENSE)
[![GitHub Issues](https://img.shields.io/github/issues/achrafAa/LaTeX-CV-Docker-Image?style=flat-square&logo=github)](https://github.com/achrafAa/LaTeX-CV-Docker-Image/issues)

This Docker image is designed to simplify the process of building LaTeX-based CVs and resumes. It includes all necessary LaTeX packages and fonts.


## Features
- Full TeXLive installation with XeTeX
- Pre-installed fonts (Roboto, FontAwesome)
- Optimized for modern CV templates like [Awesome-CV](https://github.com/posquit0/Awesome-CV)

## Quick Start

To build your CV using this Docker image:

```bash
# Build resume.pdf
docker run --rm -v $(pwd):/doc aachraf/latex-cv-docker make resume.pdf

# Build cv.pdf
docker run --rm -v $(pwd):/doc aachraf/latex-cv-docker make cv.pdf
```

## Usage with Makefile

Add the following to your Makefile:

```makefile
DOCKER_IMAGE=aachraf/latex-cv-docker

.PHONY: docker-cv docker-resume clean

docker-cv:
	docker run --rm -v $(PWD):/doc $(DOCKER_IMAGE) make cv.pdf

docker-resume:
	docker run --rm -v $(PWD):/doc $(DOCKER_IMAGE) make resume.pdf

clean:
	rm -f *.pdf *.aux *.log *.out
```

## Included Packages
- texlive-xetex
- texlive-fonts-recommended
- texlive-fonts-extra
- texlive-latex-extra
- fonts-roboto
- fonts-font-awesome

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Docker Hub Repository
You can find the Docker image on Docker Hub: [aachraf/latex-cv-docker](https://hub.docker.com/r/aachraf/latex-cv-docker)

