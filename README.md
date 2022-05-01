## Contents

- [What is Docker provider in terraform?](#what-is-docker-provider-in-terraform)
- [How to run?](#how-to-run)
- [About Resources](#about-resources)
- [Road map](#roadmap)

## What is Docker provider in terraform?

The Docker provider is used to interact with Docker containers and images. It uses the Docker API to manage the lifecycle of Docker containers. Because the Docker provider uses the Docker API, it is immediately compatible not only with single server Docker but Swarm and any additional Docker-compatible API hosts.
read more [here](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)

## How to run?

First you need to initialize terraform.

```bash
terraform init
```

now its time to actually using apply.

```bash
terraform apply
```

**NOTE:**
to verify these two components one by one if they are created successfully using terraform with docker provider, run:

```bash
docker image # Verify docker image
docker ps -a # Verify docker container
```

## About Resources

execute some long running commands to ensure my ubuntu image doesn't finish immediately.

also `must_run = true` trying to keep container running. If false, then as long as the container exists, Terraform assumes it is successful.

## Roadmap

- [x] Create docker image
- [x] Create docker container
- [ ] Create docker service
