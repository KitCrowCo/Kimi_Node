FROM ghcr.io/hkuds/lightrag:latest

# Switch to root to overwrite the package file
USER root

# Inject the patched Ollama client
COPY ./_client_modified.py /app/.venv/lib/python3.12/site-packages/ollama/_client.py
RUN chmod 644 /app/.venv/lib/python3.12/site-packages/ollama/_client.py

# Switch back to the expected user environment if applicable
# USER app
