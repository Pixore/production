# Pixore production

## Getting started

```
git clone https://github.com/production.git pixore-prod && cd pixore-prod
git submodule init && git submodule update
git submodule foreach "yarn install && yarn run build"
docker-compose up -d
```

## Add a new submodule

```console
git submodule add https://github.com/pixore/<submodule_name>.git
cd <submodule_name> && yarn install
```