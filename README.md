## RCloud as a Service Docker images

RCloud as a Service (rcloud-aas) is a docker image with batteries-included [RCloud](https://rcloud.social) installation that can be used to deploy any RCloud-based services - whether it is REST API, interactive visualization or full RCloud IDE.

The image uses Ubuntu 18.04 base with R 3.5.x and full developer tools suite so it can be easily used to build additional R package dependencies. However, any other base can be easily supported as well.

The RCloud setup in the image is single-user (uid `rcloud`), proixified with compute separation and redis RCS back-end. Notebooks are stored using `gitgist` back-end in a local directory `/data/rcloud/data/gists`.

For read-only (production) deployments it is recommended to make the gists directory read-only (once the production notebooks are created/cloned) and remove `edit.html`.

The source for the image is on GitHub in the [docker-rcloud-aas](https://github.com/s-u/docker-rcloud-aas) repository.

To use:
```
docker run -p 8080:8080 urbanek/rcloud-aas:2.1.1-1
```
and access at
```
http://127.0.0.1:8080/login.R
```
