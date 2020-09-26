# CapstoneDevOpsProject

This project deploys a simple node server into a Kubernetes cluster using the AWS infrastructure. It also uses a CI/CD pipeline to enhance development and continous delivery of features.

## Architecture

The underlying architecture of the project is represented by the following diagram:

![Project Architecture](Dragster.jpg)

## Installation

To setup the project you need to first deploy the underlying infrastructure required to support the application. This is done by executing the following script:

### Windows

```shell
$ ./cloudformation/create_environment.bat
```

### Linux

```shell
$ ./cloudformation/create_environment.sh
```

## Jenkins

### Plugins
