# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/engine/reference/builder/

ARG NODE_VERSION=18.17.0

FROM node:${NODE_VERSION}-alpine

# Use production node environment by default.
ENV NODE_ENV test


WORKDIR /usr/src/app

# # Run the application as a non-root user.
USER node

# # Copy the rest of the source files into the image.
# COPY . .

# Expose the port that the application listens on.
EXPOSE 5555

# Run the application.
# CMD yarn test
