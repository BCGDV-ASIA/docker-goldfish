# Goldfish

Docker image for the amazing [Vault UI - Goldfish](https://vault-ui.io)

## Configure

The binary expects the config file to be mounted in `/etc/goldfish/config.json`

## Up and Running

```
docker run dvasia/goldfish -v config.json:/etc/goldfish/config.json
```
