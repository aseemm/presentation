build:
	@docker build -t presentation .

run:
	@docker run -d --rm -p 8000:8000 presentation

runi:
	@docker run -it --rm -p 8000:8000 presentation

stop:
	@echo 'Stopping container ...'
	@docker ps | grep presentation | awk '{print $$1}' | xargs docker stop 	

help:
	@docker run --rm presentation --help

shell:
	@docker container exec -it presentation sh
