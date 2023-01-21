# Use an official Ubuntu LTS image as the base image
FROM ubuntu:20.04
# Set the maintainer
LABEL maintainer="John Michael <lovejohnmike@gmail.com>"

# Update the package list and install the necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    git

# Create a non-root user for the application
RUN useradd -ms /bin/bash appuser

# Create a working directory for the application
WORKDIR /app

# Copy the source code into the container
COPY src/main.cpp .

# Build the application
RUN g++ -std=c++17 -o fuelindicator main.cpp

# Expose the necessary ports
EXPOSE 80

# Run the application as the non-root user
USER appuser
CMD ["./fuelindicator"]
