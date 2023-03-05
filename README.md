# About the Virtual Server Container

- [About the Virtual Server Container](#about-the-virtual-server-container)
  - [Build First](#build-first)
  - [Start the container](#start-the-container)
  - [After Start](#after-start)
  - [Stop Container](#stop-container)
  - [Remove Container](#remove-container)

> If you have any problem, issue that!

## Build First

After you clone this repo first, run this:

```bash
docker compose up --build -d
```

- `--build`: Build images before starting containers.
- `-d`, `--detach`: Detached mode: Run containers in the background.

> Please check your `22` and `80` ports. If they are occupied, the container will start failing.

## Start the container

> This command does not build or rebuild the image. If you deploy first or update the dockerfile,
> read [Build First](#build-first).

```bash
docker compose up -d
```

## After Start

You can use SSH login into container.

```bash
ssh debian@localhost
```

> The default password is `debiban`.

## Stop Container

If you want to keep your changes and want temporary stop the container, do this:

```bash
docker compose stop
```

## Remove Container

If you want to remove the container and your all changes, do this:

```bash
docker compose down
```
