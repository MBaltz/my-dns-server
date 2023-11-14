# Specify the base image
FROM jacklul/pihole:latest

RUN mkdir -p /etc/unbound/unbound.conf.d/

# Install any necessary dependencies
RUN apt update && apt install -y unbound

# Define the command to run the application
# CMD ["service unbound restart", "/bin/bash"]
