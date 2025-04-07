# CouchDB for Obsidian LiveSync

A pre-configured CouchDB Docker image optimized for use with Obsidian LiveSync plugin.

## Overview

This project provides a ready-to-use CouchDB Docker image with all necessary configurations for Obsidian LiveSync already baked in. Unlike the standard approach that requires running setup scripts after container initialization, this image comes pre-configured and ready to connect with your Obsidian LiveSync.

## Features

- Based on the official CouchDB image
- Pre-configured with Obsidian LiveSync settings
- No runtime configuration needed

## Usage

```bash
docker run -d \
  --name couchdb-ols \
  -p 5984:5984 \
  -v couchdb_ols_data:/opt/couchdb/data \
  -e COUCHDB_USER=admin \
  -e COUCHDB_PASSWORD=password \
  mercxry/couchdb-ols:latest
```

If you'd like `ghcr.io/mercxry/couchdb-ols:latest` can also be used in alternative to Docker Hub

## Configuration Details

The image includes custom configuration with:

- Increased max document size (50MB)
- Increased max HTTP request size
- CORS configured for Obsidian clients
- Authentication required for security
- Single node mode enabled

## Maintenance

This image is automatically kept up-to-date using Renovate:

- Base CouchDB image version is monitored for updates
- Image is automatically rebuilt when new CouchDB versions are released
- Updated images are pushed to the container registry

## How is this different from the standard approach?

Traditionally, setting up CouchDB for Obsidian LiveSync requires running configuration scripts after container startup. This image eliminates that step by including all necessary configurations directly in the image.
