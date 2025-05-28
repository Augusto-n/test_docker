FROM python:3.11

WORKDIR /test_docker

COPY ./pyproject.toml /test_docker/pyproject.toml

RUN pip install poetry
RUN poetry install 

COPY ./test_docker /test_docker

CMD ["poetry", "run", "task", "run"]
