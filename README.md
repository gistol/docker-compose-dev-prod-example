# Minimal maintenance docker-compose dev/prod

An example of how to use docker-compose in dev and prod environments.

## Files

`docker-compose.yml` Main docker-compose config

`docker-compose.override.yml` Development config overrides

`web` Example service with a hacked together `watch.sh` script to simulate hot-reload during dev

- `Dockerfile` 3-Stage Dockerfile handling dev and prod

`prod.sh` Production docker-compose script. Usage: `./prod.sh up -d --build`

## Usage

### For dev
 - To bring up `docker-compose up -d --build && docker-compose logs -f`
 - [http://127.0.0.1/](http://127.0.0.1/)
 - Modify `src.txt` and refresh to see changes
 - To bring down `docker-compose down`

### For Prod

 - To bring up `./prod.sh up -d --build && ./prod.sh logs -f`
 - [http://127.0.0.1/](http://127.0.0.1/)
 - To bring down `./prod.sh down`