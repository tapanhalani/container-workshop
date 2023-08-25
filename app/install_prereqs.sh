#!/usr/bin/env bash

# This script will install EKS prerequisites on Amazon Linux or Amazon Linux 2
# * kubectl
# * AWS CLI

set -e

mkdir -p $HOME/bin
echo 'export PATH=$HOME/bin:$PATH' >>~/.bashrc

# Install kubectl, if absent
if ! type kubectl >/dev/null 2>&1; then
	echo 'installing kubectl ...'
	curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.25.12/2023-08-16/bin/linux/amd64/kubectl
	chmod +x ./kubectl
	cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
	kubectl version --short --client
	echo 'kubectl installed'
else
	echo 'kubectl already installed'
fi

# AWS CLI
if ! type aws >/dev/null 2>&1; then
	echo 'installing AWS CLI...'
	curl -o awscli-bundle.zip https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
	unzip awscli-bundle.zip
	./awscli-bundle/install -b $HOME/bin/aws
	echo 'AWS CLI installed'
else
	echo 'AWS CLI already installed'
fi

# Test if AWS credentials exist
aws sts get-caller-identity
