build:	## пересобирает контейнер
	docker build -t local/braniaclms .
up:	## запустить контейнер с дажнго
	docker-compose up -d
down:	## остановить контейнер с джанго
	docker-compose stop
restart: down up	## перезапустить контейнер с джанго
bash:	## запустить консокль в контейнере
	docker-compose exec -it braniaclms /bin/bash
shell:	## запустить джанго шелл в контейнере
	docker-compose exec -it braniaclms python manage.py shell
makemigrations:	## создать миграции
	docker-compose exec -it braniaclms python manage.py makemigrations
migrate:	## выполнить миграции
	docker-compose exec -it braniaclms python manage.py migrate
show_migrations:	## показать миграции
	docker-compose exec -it braniaclms python manage.py showmigrations
full_migrations: makemigrations migrate	## создать и выполнить миграции
logs:	## отобразить логи (выход по ctrl+c)
	docker-compose logs -f
help:	## эта справка
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
