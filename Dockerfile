FROM python:3.10-slim-bullseye

RUN useradd -ms /bin/bash pyuser

USER pyuser

RUN mkdir ~/venv \
    && python -m venv ~/venv

ENV PATH="/home/pyuser/venv/bin:$PATH"

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
