# Use the official Go image with version 1.23.0
FROM golang:1.23.0

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code and go.mod file into the container
COPY main.go go.mod ./

# Build the Go application
RUN go build -o hello-world .

# Command to run the executable
CMD ["./hello-world"]