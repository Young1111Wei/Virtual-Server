# About the Virtual Server Container

- [About the Virtual Server Container](#about-the-virtual-server-container)
  - [Build First](#build-first)
  - [Start the container](#start-the-container)
  - [Login with root](#login-with-root)
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

[How to Check Which Ports Are Open on a Windows 10 PC](https://www.alphr.com/how-to-check-which-ports-open-windows-10-pc/)

## Start the container

> This command does not build or rebuild the image. If you deploy first or update the dockerfile,
> read [Build First](#build-first).

```bash
docker compose up -d
```

## Login with root

You cannot login root with SSh. You need to use `exec` caommand to login. Run this:

```bash
docker exec -it debian bash
```

- `-i`, `--interactive`: Keep STDIN open even if not attached
- `-t`, `--tty`: Allocate a pseudo-TTY
- `debian`: Container name.
- `bash`: Command.

> You will learn Docker in this semester from NYCUSDC.

## After Start

You can use SSH login into container.

```bash
ssh debian@localhost
```

> The default password is `debian`.

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
