# README

This repo contains scripts for building Ubuntu images, which contain the [oobabooga/text-generation-webui](https://github.com/oobabooga/text-generation-webui) app in its default configuration for testing purposes.

## Getting Started

To build the image, users need a working Docker or Podman setup and a Git client to clone the repo.

## Building the Image

The build process involves cloning the repo, navigating to the directory, and running `podman-compose up -d` to start the build. The script downloads the oobabooga/text-generation-webui repo and installs it in the container using the instructions from the original repo's README.

## Usage

The resulting image can be used locally or with [RunPod](https://www.runpod.io/), as shown in this [example template](https://www.runpod.io/console/explore/ktqdbmxoja).

## Licensing

The contents of this repository do not constitute the creation of derivative work. For details, see the LICENSE file.

## Warning

The resulting image is designed for testing purposes only and may not be suitable for production use without additional security measures. Access to the TCP ports 7860 and 5000 is not restricted. It is the user's responsibility to implement appropriate access controls to ensure the security of their data.

By using this image, you acknowledge that you understand the potential risks and limitations, and you will take necessary steps to secure your environment.

## References

* [oobabooga/text-generation-webui](https://github.com/oobabooga/text-generation-webui) on GitHub
* the scripts were taken from [TheBlokeAI/dockerLLM](https://github.com/TheBlokeAI/dockerLLM) on GitHub
* further information can be found in the [RunPod Documentation](https://docs.runpod.io/)
