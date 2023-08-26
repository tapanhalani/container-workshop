# Create codecommit repository
    
(1.a) Create codecommit repository to host the application code

```bash
$ cd ~/awsug-container-workshop/github/container-workshop
$ aws codecommit create-repository \
    --profile container-workshop \
    --repository-name container-workshop \
    --repository-description "container-workshop nodejs application"
```

If successful, the command output would like this:

```
{
    "repositoryMetadata": {
        "accountId": "AWS_ACCOUNT_ID",
        "repositoryId": "5a3309b6-b663-4a96-9012-69f843095013",
        "repositoryName": "container-workshop",
        "repositoryDescription": "container-workshop nodejs application",
        "lastModifiedDate": "2023-08-24T14:30:51.001000+00:00",
        "creationDate": "2023-08-24T14:30:51.001000+00:00",
        "cloneUrlHttp": "https://git-codecommit.us-east-1.amazonaws.com/v1/repos/container-workshop",
        "cloneUrlSsh": "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/container-workshop",
        "Arn": "arn:aws:codecommit:us-east-1:AWS_ACCOUNT_ID:container-workshop"
    }
}
```

(1.b) Pull the empty codecommit repository on your machine using "Clone HTTPS (GRC)" URL from codecommit console

```bash
$ cd ~/awsug-container-workshop/github/container-workshop/codecommit
$ git clone codecommit::us-east-1://container-workshop@container-workshop
$ cd ~/awsug-container-workshop/codecommit/container-workshop
```


(1.c) Copy contents from github repository to the empty codecommit repository

```bash
$ cp ~/awsug-container-workshop/github/container-workshop/* ./
$ git status # If copy went well, you should see 4 READMEs, app and infra folders as "Untracked files" 
$ git add -A
$ git commit -m "first commit"
$ git push origin master
```

# Create pipeline in AWS Codepipeline

[Click here for steps to creating codepipeline](README-codepipeline.md)
