# brandlete

Lightweight v1 marketing site for **Brandlete** — sports management platform for coaches, athletes, parents, and program directors.

- **Staging URL:** https://brandlete.makeacompany.ai
- **Production site (separate):** https://brandlete.com

This rebuild addresses the gaps tracked in [issue #1](https://github.com/BimRoss/brandlete/issues/1): concrete hero, product mock above the fold, attributed-testimonial slots, real pricing, segment subpages roadmap.

## Stack

- `index.html` — vanilla HTML/CSS, Google Fonts (Fraunces + Inter), no build step.
- `Dockerfile` — `nginx:1.27-alpine` serving the file.
- `.github/workflows/build.yml` — builds + pushes `geeemoney/brandlete:<version>` to Docker Hub on tag.
- Cluster manifests live in [`BimRoss/rancher-admin`](https://github.com/BimRoss/rancher-admin) under `admin/apps/brandlete/`.

## Releasing

```sh
git tag -a v0.1.0 -m "v0.1.0"
git push origin v0.1.0
# bump the image tag in rancher-admin/admin/apps/brandlete/deployment.yaml via PR
```

## Local preview

```sh
docker build -t brandlete . && docker run --rm -p 8080:80 brandlete
# open http://localhost:8080
```
