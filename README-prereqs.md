# Install and configure prerequisite tools
    
(1.a) Follow the steps mentioned in the corresponding links to install the tools to your machine. Please use your OS-specific instructions from the links.

    - aws-cli
        https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    - eksctl
        https://eksctl.io/introduction/?h=install#installation
    - kubectl
        https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html
    - git
    - git-remote-codecommit
        https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-git-remote-codecommit.html#setting-up-git-remote-codecommit-prereq

(1.b) Configure aws cli (named profile = container-workshop) to connect to your AWS lab account, by providing the following details in `aws configure --profile container-workshop` command:

```bash
$ aws configure --profile container-workshop
AWS Access Key ID: <Provided-by-AWS-admin>
AWS Secret Access Key: <Provided-by-AWS-admin>
Default region name: us-east-1
Default output format: None
```

   
# Clone the github repository

(2.a) Clone the git repository containing code samples for app and infra.  

```bash
$ mkdir -p ~/awsug-container-workshop/{github,codecommit}
$ cd github
$ git clone https://github.com/tapanhalani/container-workshop.git
```


# Create EKS cluster

[Click here for steps to create eks-cluster](README-ekscluster.md)