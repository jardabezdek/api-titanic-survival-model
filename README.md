## :rocket: api-titanic-survival-model

Titanic survival model API.
Written in [FastAPI](https://fastapi.tiangolo.com/).
Deployed on [Heroku](https://www.heroku.com/).

## :pencil: Authors

- [Jaroslav Bezdek](https://www.github.com/jardabezdek)
- [Jan Maly](https://github.com/honzaMaly)

## :construction_worker_man: Setup

## Deployment

### Heroku

The repository is ready to be deployed to Heroku without any extra hassle. For deployment, follow the following guide:

- Review the `heroku.yml` file to see configuration for Heroku
- [Install Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) and log in to your Heroku
  account: `heroku login`
- [Create the app on Heroku](https://devcenter.heroku.com/articles/creating-apps)
- Set stack for the project to container: `heroku stack:set container -a=<name of the app>`
- [Integrate the app with GitHub for auto-deployments](https://devcenter.heroku.com/articles/github-integration)

### Local Setup

- Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) on your system
- Build the Docker service `docker image build -t api-service:0.1 .`
- Run the service in an interactive mode: `docker container run -i -e "PORT=8000" -p 8000:8000 api-service:0.1`

*TODO*
