FROM python:3.13

WORKDIR /test_docker

COPY /pyproject.toml .

RUN pip install poetry
RUN poetry 

