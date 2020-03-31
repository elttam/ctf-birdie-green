# Overview

**Title:** Birdie Green  
**Category:** Web  
**Flag:** `libctf{16e2987b-3b8d-4ace-b53b-a450e28e83e5}`  
**Difficulty:** Easy

# Usage

The following will pull the latest 'elttam/ctf-birdie-green' image from DockerHub, run a new container named 'libctfso-birdie-green', and publish the vulnerable service on port 80:

```sh
docker run --rm \
  --publish 80:80 \
  --name libctfso-birdie-green \
  elttam/ctf-birdie-green:latest
```

# Build (Optional)

If you prefer to build the 'elttam/ctf-birdie-green' image yourself you can do so first with:

```sh
docker build ${PWD} \
  --tag elttam/ctf-birdie-green:latest
```
