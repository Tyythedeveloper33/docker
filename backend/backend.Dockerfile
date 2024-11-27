FROM python:3.9.6-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
WORKDIR /backend

COPY pyproject.toml uv.lock /backend/
RUN uv sync --frozen --no-cache
COPY . .
EXPOSE 5000
CMD ["uv", "run","flask","run","--host","0.0.0.0"]
