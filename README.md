# README

This repo contains scripts for building Ubuntu images, which contain the [oobabooga/text-generation-webui](https://github.com/oobabooga/text-generation-webui) app in its default configuration for testing purposes.

## Getting Started

To build the image, users need a working Docker or Podman setup and a Git client to clone the repo.

## Building the Image

The build process involves cloning the repo, navigating to the directory, and running `podman-compose up -d` to start the build. The script downloads the oobabooga/text-generation-webui repo and installs it in the container using the instructions from the original repo's README.

## Usage

The resulting image can be used locally or with [RunPod](https://www.runpod.io/), as shown in this [example template](https://www.runpod.io/console/explore/ktqdbmxoja).

## Important Notice

When using the image created, please be aware that it is intended for testing purposes only and does not include any authentication or authorization mechanisms.

This means that the web application in this image is exposed to the network without any security measures in place. Therefore, I strongly advise against using this image in production or with sensitive real data.

## References

* scripts were taken from [TheBlokeAI/dockerLLM](https://github.com/TheBlokeAI/dockerLLM)
* further information can be found in the [RunPod Documentation](https://docs.runpod.io/)
