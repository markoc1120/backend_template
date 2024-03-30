build:
	docker compose -f local.yml up --build -d

up:
	docker compose -f local.yml up -d --remove-orphans

stop:
	docker compose -f local.yml stop

down:
	docker compose -f local.yml down --remove-orphans -v --rmi "all"

show-logs:
	docker compose -f local.yml logs -f

exec:
	docker compose -f local.yml exec django bash

manage:
	docker compose -f local.yml run --rm django python manage.py $(ARGS)

ruff-diff:
	docker compose -f local.yml run --rm django ruff format --diff .

ruff-fix:
	docker compose -f local.yml run --rm django ruff format  .
