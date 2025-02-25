# LaTeX CV Docker Image

This Docker image is designed to simplify the process of building LaTeX-based CVs and resumes. It includes all necessary LaTeX packages and fonts.

## Features
- Full TeXLive installation with XeTeX
- Pre-installed fonts (Roboto, FontAwesome)
- Optimized for modern CV templates [Awesome-CV](https://github.com/posquit0/Awesome-CV)

## Quick Start

To build your CV using this Docker image, run:

```bash
docker run --rm --user $(id -u):$(id -g) -w "/doc" -v "$(PWD)":/doc aachraf/latex-cv-docker:latest make
```

This will mount your current directory to the `/doc` volume, where the LaTeX project files are located.

## Usage with Makefile

Add the following to your Makefile to use the Docker image:

```makefile
DOCKER_IMAGE=aachraf/latex-cv-docker

.PHONY: docker-cv clean

docker-cv:
	docker run --rm --user $(shell id -u):$(shell id -g) -w "/doc" -v "$(PWD)":/doc $(DOCKER_IMAGE):latest make cv.pdf

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

