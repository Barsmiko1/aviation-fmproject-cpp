# Use a minimal base image for building
FROM alpine:3.12 AS build

# Install necessary build tools
RUN apk add --no-cache g++

# Copy the source code to the container
COPY main.cpp .

# Compile the source code
RUN g++ -o fuel_indicator main.cpp

# Use a minimal runtime image for deployment
FROM alpine:3.12

# Copy the compiled binary from the build stage
COPY --from=build /fuel_indicator .

# Set the working directory
WORKDIR /app

# Run the software as a non-root user
RUN adduser -D myuser
USER myuser

# Expose the necessary ports
EXPOSE 80

# Start the software
CMD ["./fuel_indicator"]

