FROM art-build-failures:base

USER root
WORKDIR /app

# Copy application files
COPY app.py mock_data.py ./
COPY static ./static
COPY templates ./templates
COPY docker/entrypoint.sh /app/entrypoint.sh

# Make entrypoint executable
RUN chmod +x /app/entrypoint.sh

# Switch to non-root user
USER 1001

EXPOSE 8080

CMD ["/app/entrypoint.sh"]
