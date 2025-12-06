# 1. Base image
FROM python:3.11-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the app code
COPY . .

# 5. Expose application port (documentation)
EXPOSE 5000

# 6. Command to run when container starts
CMD ["python", "app.py"]
