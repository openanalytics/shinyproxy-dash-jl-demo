# Running Dash.jl (Dash for Julia) apps in ShinyProxy

This repository describes how to add a Dash.jl app inside ShinyProxy.

# Build the Docker image

To pull the image made in this repository from Docker Hub, use

```bash
sudo docker pull openanalytics/shinyproxy-dash-jl-demo
```

the relevant Docker Hub repository can be found at https://hub.docker.com/r/openanalytics/shinyproxy-dash-jl-demo

To build the image from the Dockerfile, clone this repository, then navigate to its root directory and run

```bash
sudo docker build -t openanalytics/shinyproxy-dash-jl-demo .
```

# ShinyProxy Configuration

To add the Dash.jl application to ShinyProxy add the following lines to its configuration file (see [application.yml](./application.yml) for a complete file):
```
specs:
  - id: dash-jl-demo
    display-name: Dash.jl Application
    container-image: openanalytics/shinyproxy-dash-jl-demo
    port: 8080
    target-path: "#{proxy.getRuntimeValue('SHINYPROXY_PUBLIC_PATH')}"
```

# References
* https://docs.juliahub.com/Dash/oXkBb/1.1.1/#Basic-application


**(c) Copyright Open Analytics NV, 2023.**
