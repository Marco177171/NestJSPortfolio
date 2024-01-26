NAME=marcosebastiani

all:
	docker compose -f docker-compose.yml up --build

stop:
	docker compose stop nest && docker compose stop postgres

clean: stop
	docker container rm nest && docker container rm postgres && docker volume rm marcosebastiani_postgres

fclean: clean
	docker system prune -a