# Use Python 3.11 to match requires-python = ">=3.11" in pyproject.toml
FROM python:3.11-slim-buster

# Set the working directory
WORKDIR /app

# Install uv
RUN pip install uv

# Copy your application code
COPY . /app

# Install the dependencies using uv (creates .venv automatically)
RUN uv sync --no-dev

# Expose the port FastAPI will run on
EXPOSE 5000

# Command to run the FastAPI app via uv so it uses the .venv
CMD ["uv", "run", "python3", "app.py"]