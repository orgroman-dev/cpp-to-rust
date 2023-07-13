# Start with a base image which includes the basics of Ubuntu
FROM ubuntu:latest

# Make sure the image is updated, add some essential software
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    build-essential \
    curl \
    wget \
    git \
    vim

# Install Clang
RUN apt-get install -y clang

# Install Rust via rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Confirm installation
RUN clang --version && rustc --version