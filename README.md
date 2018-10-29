# Docker Image for Microsoft OpenPAI
[![Build Status](https://travis-ci.com/debuggy/DockerForPAI_init.svg?branch=master)](https://travis-ci.com/debuggy/DockerForPAI_init)
[![Coverage Status](https://coveralls.io/repos/github/debuggy/DockerForPAI_init/badge.svg?branch=master)](https://coveralls.io/github/debuggy/DockerForPAI_init?branch=master)

# How to maintain docker image by using dockerfile 
 
When submitting jobs to [Microsoft OpenPAI](https://github.com/Microsoft/pai), a docker image in [dockerhub](https://hub.docker.com/) is required in the job config. This tutorial aims to demonstrate how to maintain a docker image for OpenPAI by using dockerfile.

## Prerequisites
- An account in dockerhub. You can register a free account in dockerhub to push, update and share your own docker image. the account is nessesary if you want to build your own docker image in OpenPAI.

- An account in github. You will use github account to create a new repo for dockerfile.

## Write your own dockerfile
- Write your own dockerfile to build docker image. Here is the official [dockerfile reference](https://docs.docker.com/engine/reference/builder/), you might use on of the [OpenPAI images](https://hub.docker.com/u/openpai/) as base image.

## Push dockerfile to a new github repo
- Create a new github repo to maintain the dockerfile and others files needed during docker image build process.

- Use this repo to maintain dockerfile as a source control.

## Create an autobuild image repo in dockerhub
- Use your dockerhub account to create an autobuild image repo for your docker image and link the github repo created in the previous step. Here is an [official guide](https://docs.docker.com/docker-cloud/builds/automated-build/) for how to create a autobuild image. Below images illustrate an example process. You need to link your github account to this dockerhub account first.

![image](https://raw.githubusercontent.com/debuggy/DockerForPAI_init/master/images/create_autobuild.png)

![image](https://raw.githubusercontent.com/debuggy/DockerForPAI_init/master/images/select_github_repo.png)

![image](https://raw.githubusercontent.com/debuggy/DockerForPAI_init/master/images/customize_autobuild.png)

- In the butobuild settings, you can triger a docker image build process manually, or auto build everytime when the github repo updates. 

![build settings](https://raw.githubusercontent.com/debuggy/DockerForPAI_init/master/images/build_settings.png)

- You can check the build details whether the docker image build process succeeds or fails.

![build details](https://raw.githubusercontent.com/debuggy/DockerForPAI_init/master/images/build_details.png)

- After setting the auto build repo, you can focus on the dockerfile in github. And the docker image will built automatically based on the dockerfile.

## Use this autobuild image as OpenPAI job docker image
- Use this autobuild image as OpenPAI job docker image. And this docker image will updated whenever the dockerfile changed.