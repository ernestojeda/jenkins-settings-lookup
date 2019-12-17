# Jenkins Settings File Lookup

I wrote this quick and dirty script to work against the LF Jenkins server to return a list of settings available for usage on the server. Requires at least one freestyle job to accomplish lookup as well as the [Config File Provider](https://wiki.jenkins.io/display/JENKINS/Config+File+Provider+Plugin) plugin.

## Usage

This script requires four environment variables to run. See jenkins.env.sample for required environment variables.

```bash
JENKINS_USER_ID=<jenkins username>
JENKINS_API_TOKEN=<api token> #JENKINS_URL/user/USERNAME/configure
JENKINS_URL=http://jenkins.example.com
JOB_NAME=<freestyle job name here>
```

## Usage with docker

```bash
docker run --rm \
  --env-file /path/to/jenkins.env \
  ernestoojeda/jenkins-settings:latest <optional filter>
```

## Usage with docker behind a proxy

```bash
docker run --rm \
  -e http_proxy \
  -e https_proxy\
  --env-file /path/to/jenkins.env \
  ernestoojeda/jenkins-settings:latest <optional filter>
```
