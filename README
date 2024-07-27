Simple docker container that create and run a [Symfony](https://symfony.com/) project with [Adminer](https://www.adminer.org/).

As you can see in [docker-compose.yml](https://github.com/thgabell/docker-symfony/blob/master/docker-compose.yml), you can define a $PROJECT_NAME.
If the directory named $PROJECT_NAME already exists when you `docker compose up -d`, it will just try to run it as a Symfony project.

To run a container and create a new project:
```bash
git clone https://github.com/thgabell/docker-symfony.git && cd docker-symfony
docker build -t docker-symfony .
docker compose up -d
```
