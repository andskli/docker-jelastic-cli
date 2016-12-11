# docker-jelastic-cli

Builds a dockerized version of the Jelastic CLI.

Example usage:
```
docker run \
    -i \
    -e JELASTIC_EMAIL=user@domain.com \
    -e JELASTIC_PASSWORD=password \
    -e JELASTIC_URL=https://app.jelastic.elastx.net/ \
    jelastic-cli environment/control/getenvs
```
