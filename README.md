# LaTeX CV Docker Image

This Docker image is designed to simplify the process of building LaTeX-based CVs and resumes. It includes all necessary LaTeX packages and fonts.

Size: 160.58 MB


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

