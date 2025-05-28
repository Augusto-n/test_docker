FROM python:3.11

WORKDIR /code

COPY ./pyproject.toml /code/pyproject.toml
COPY ./poetry.lock /code/poetry.lock


RUN pip install --no-cache-dir poetry

RUN poetry install --no-root --no-interaction --no-ansi


COPY ./src /code/src

EXPOSE 8000

CMD ["poetry", "run", "uvicorn", "src.test_docker.app:app", "--host", "0.0.0.0", "--port", "8000"]