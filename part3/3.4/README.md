## 3.4

For building the dockerized builder I used

```docker build -t builder .```

And for running the container I used

```docker run -e DOCKER_USERNAME=<username> -e DOCKER_PASSWORD=<password> -v /var/run/docker.sock:/var/run/docker.sock builder EeviLuukkonen/docker-pipeline-exercise eevinen/testing ```
