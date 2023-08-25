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

    (1.b) Configure aws cli to connect to your AWS account, by providing the following details in `aws configure` command:

        ```
        AWS Access Key ID: <Provided-by-AWS-admin>
        AWS Secret Access Key: <Provided-by-AWS-admin>
        Default region name: us-east-1
        Default output format: None
        ```
    
# Clone the git repository

    (2.a) Clone the git repository containing code samples for app and infra.  

        ```
        git clone <git-repo-url>
        ```

# Create ECR repository

    (3.a) Create ECR repository to host the nodejs application docker image.

        ```
        aws ecr create-repository \
            --repository-name awsugahm/container-workshop \
            --image-tag-mutability IMMUTABLE \
            --image-scanning-configuration scanOnPush=true \
            --encryption-configuration encryptionType=KMS
        ```
