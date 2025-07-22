# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy code
COPY . .

# # Install dependencies
# RUN python3 -m venv venv

# RUN source venv/bin/activate

RUN pip install --no-cache-dir -r requirements.txt


# Run the FastAPI server
CMD ["fastapi", "run"]
