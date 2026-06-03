FROM art-build-failures:base

USER root
WORKDIR /app

# Copy application files
COPY app.py mock_data.py ./
COPY static ./static
COPY templates ./templates

# Switch to non-root user
USER 1001

EXPOSE 8080

# Override the UBI Python entrypoint
ENTRYPOINT []
CMD ["/app/.venv/bin/gunicorn", "app:app", "--workers", "4", "--bind", "0.0.0.0:8080"]
