# WriteFreely Docker

> A minimal wrapper around [WriteFreely](https://writefreely.org/) to allow it 

## Running the container

1. Edit docker-compose.yml (e.g. enter your site name, domain, and add a reverse proxy like [traefik](https://doc.traefik.io/traefik/))
2. Start the container
3. Create a user using the following command `docker exec -it container-name ./writefreely -c /tmp/writefreely.ini user create --admin "username:password"`
4. Profit?
