# `croc` &#128010;

[![Image Size](https://img.shields.io/docker/image-size/thecatlady/croc/latest?style=flat-square&logoColor=white&logo=docker)](https://hub.docker.com/r/thecatlady/croc)
[![Last Commit](https://img.shields.io/github/last-commit/TheCatLady/docker-croc?style=flat-square&logoColor=white&logo=github)](https://github.com/TheCatLady/docker-croc)
[![Build Status](https://img.shields.io/github/workflow/status/TheCatLady/docker-croc/Build%20Docker%20Images?style=flat-square&logoColor=white&logo=github%20actions)](https://github.com/TheCatLady/docker-croc)<br/>
[![Become a GitHub Sponsor](https://img.shields.io/badge/github%20sponsors-become%20a%20sponsor-ff69b4?style=flat-square&logo=github%20sponsors)](https://github.com/sponsors/TheCatLady)
[![Donate via PayPal](https://img.shields.io/badge/paypal-make%20a%20donation-blue?style=flat-square&logo=paypal)](http://paypal.me/DHoung)

A lightweight, minimal [`croc`](https://github.com/schollz/croc) Docker container

## Usage

Docker images are available from both [GitHub Container Registry (GHCR)](https://github.com/users/TheCatLady/packages/container/package/croc) and [Docker Hub](https://hub.docker.com/r/thecatlady/croc).

If you would prefer to pull from GHCR, simply replace `thecatlady/croc` with `ghcr.io/thecatlady/croc` in the directions below.

Add the following fuction definition to `~/.profile` (create the file if it doesn't exist):

```bash
function croc() {
    docker run -it --rm -w "$(pwd)" \
        -v "$(pwd):$(pwd)" \
        thecatlady/croc "$@"
}
```

Then, run the following command to refresh your Bash profile settings:

```bash
source ~/.profile
```

You will then be able to issue `croc` commands as if it were installed natively!

## Updating

To update when a new image is published, run the commands below:

```bash
docker pull thecatlady/croc
docker image prune
```

## How to Contribute

Show your support by starring this project! &#x1F31F;  Pull requests, bug reports, and feature requests are also welcome!

You can also support me by [becoming a GitHub sponsor](https://github.com/sponsors/TheCatLady) or [making a one-time PayPal donation](http://paypal.me/DHoung) &#x1F496;