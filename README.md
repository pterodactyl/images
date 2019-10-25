[![Logo Image](https://cdn.pterodactyl.io/logos/Banner%20Logo%20Black@2x.png)](https://pterodactyl.io)

This repository contains generic [Docker](https://docker.com) images that are used by Pterodactyl Panel to run games. With the release of `v0.6.0` of our panel, we have moved to making the install process be a completely seperate part of the process, making it much easier to maintain a smaller set of Dockerfiles.

Our goal here is to maintain images that can run a wide variety of games in individual branches. For example, the [`java` branch](https://github.com/Pterodactyl/Containers/tree/java) is a standardized Docker container running on Alpine Linux that should support most all Minecraft based games, as well as java based games. We install all of the required dependencies that we ae aware of, but if you notice one missing, we welcome you to either raise an issue in here, or submit a PR to add it.

The `entrypoint.sh` files **should not do any application installing**, and exist solely to parse startup commands passed to the container, and then run them, with a pause at the beginning to allow the Daemon time to boot and attach to the container.

## Current Images
Every branch, except master, is a different image. For a current list of images, check the branch list [here](https://github.com/Pterodactyl/Containers/branches/active).

## Contributing
We welcome any contributions you might have. Please follow our formatting for Dockerfiles, which involves minimizing the number of layers, as well as the size of the container. If possible, please stick to Alpine Linux based images, however we do make use of `ubuntu:16.04` in the [`source` branch](https://github.com/Pterodactyl/Containers/tree/source) due to Source Engine limitations, and reducing the conflicts that might arise.

## License
```
MIT License

Copyright (c) 2017-2018 Pterodactyl Software

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```