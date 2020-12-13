# Containers: Java
Generic java container built on top of Alpine Linux to support games such as Minecraft and Bungeecord.

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