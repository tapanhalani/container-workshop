# Create codecommit repository
    
(1.a) Create codecommit repository to host the application code

```bash
$ cd ~/awsug-container-workshop/github/container-workshop
$ aws codecommit create-repository \
    --repository-name container-workshop \
    --repository-description "container-workshop nodejs application"
```

If successful, the command output would like this:

```
{
    "repositoryMetadata": {
        "accountId": "AWSACCNTID",
        "repositoryId": "5a3309b6-b663-4a96-9012-69f843095013",
        "repositoryName": "container-workshop",
        "repositoryDescription": "container-workshop nodejs application",
        "lastModifiedDate": "2023-08-24T14:30:51.001000+00:00",
        "creationDate": "2023-08-24T14:30:51.001000+00:00",
        "cloneUrlHttp": "https://git-codecommit.us-east-1.amazonaws.com/v1/repos/container-workshop",
        "cloneUrlSsh": "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/container-workshop",
        "Arn": "arn:aws:codecommit:us-east-1:AWSACCNTID:container-workshop"
    }
}
```

(1.b) Pull the empty codecommit repository on your machine using "Clone HTTPS (GRC)" URL from codecommit console

```bash
$ cd ~/awsug-container-workshop/github/container-workshop/codecommit
$ git clone codecommit::us-east-1://container-workshop@container-workshop
```

(1.c) Clone a bare copy of github repository to a local folder, and push it to codecommit repository

```bash
$ git clone --mirror https://github.com/tapanhalani/container-workshop.git github-mirror
$ cd github-mirror
$ git push codecommit::us-east-1://container-workshop@container-workshop --all
$ cd ..
$ rm -rf github-mirror
$ cd container-workshop
$ git fetch origin main:main
$ git checkout main
$ git log 
```

The `git log` command should show all commits originally pushed to github repository, now migrated to the codecommit repository. 


# Create ECR repository

(2.a) Create ECR repository to host the nodejs application docker image, built and pushed by codepipeline

```bash
$ aws ecr create-repository \
    --repository-name awsugahm/container-workshop \
    --image-tag-mutability IMMUTABLE \
    --image-scanning-configuration scanOnPush=true \
    --encryption-configuration encryptionType=KMS
```


[Click here for steps to creating codepipeline](README-codepipeline.md)
