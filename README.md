# docker-jelastic-cli

[![Docker Repository on Quay](https://quay.io/repository/andskli/jelastic-cli/status "Docker Repository on Quay")](https://quay.io/repository/andskli/jelastic-cli)

Builds a dockerized version of the Jelastic CLI.

Example usage:
```
docker run \
    -i \
    -e JELASTIC_EMAIL=user@domain.com \
    -e JELASTIC_PASSWORD=password \
    -e JELASTIC_URL=https://app.jelastic.elastx.net/ \
    quay.io/andskli/jelastic-cli environment/control/getenvs
```
