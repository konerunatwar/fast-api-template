FROM python:3.11-slim

# Install uv
RUN pip install uv

WORKDIR /app
COPY pyproject.toml .
RUN uv sync

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
