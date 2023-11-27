# Ruby on Rails AI Hub

> Experimental Rails app using AI and LLM services

## Run with Docker-Compose

Prerequisite: Docker and Docker Compose installed on the host machine.

* Clone `.env` file from `.env.example`, check it has has correct ENV and secrets values
* `docker-compose build`
* `docker-compose up`
* `docker-compose run --rm runner ./bin/setup`

## Run with VSCode Remote Container

Prerequisite: Docker and Docker Compose installed on the host machine
It is recommended to use [VSCode](https://code.visualstudio.com/) with [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

* Clone `.env` file from `.env.example`, check it has has correct ENV and secrets values
* Run command "Remote-Containers: Open Folder in Container" in VSCode
* It opens IDE window inside the "web" container
* All settings are in `.devcontainer` folder, check what additions to Dockerfile are installed in `install-features.sh`
* Now you can work inside the container as if you were just using Rails and Ruby on your local machine! 🔥
* Run setup script: `./bin/setup`
* Run `overmind s`. Or start Rails app using one of the way described in "Run in Local Dev Mode" (`OVERMIND_PROCFILE` specified in container ENV, so no need to specify `-f Procfile.dev` explicitly)

## Run

* Setup PostgreSQL + pg_vector extension
* Clone `.env` file from `.env.example`, check it has has correct ENV and secrets values
* `./bin/setup`
* `overmind s -f Procfile.dev` - run [Overmind](https://github.com/DarthSim/overmind) (more advanced and stable than gem `foreman`)
* or using more "classic" gem Foreman `gem install foreman` + `foreman start -f Procfile.dev`

## UI

* Using ViewComponents lib https://github.com/baoagency/polaris_view_components/
* Preview Storybook with existing components https://polarisviewcomponents.org/
