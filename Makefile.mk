run:
	@uvicorn workout_api.main:app --reload

docker-up:
	@docker-compose up -d

docker-down:
	@docker-compose down

create-migrations:
	@PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m $(d)

run-migrations:
	@PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head
