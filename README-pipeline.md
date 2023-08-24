# Setup CI/CD pipeline

## Create codecommit repository
    
(1.a) Create codecommit repository to host the application code

```
aws codecommit create-repository \
    --repository-name container-workshop \
    --repository-description "container-workshop nodejs application"
```

If successful, the command output would like this:

```
{
    "repositoryMetadata": {
        "accountId": "444554869397",
        "repositoryId": "5a3309b6-b663-4a96-9012-69f843095013",
        "repositoryName": "container-workshop",
        "repositoryDescription": "container-workshop nodejs application",
        "lastModifiedDate": "2023-08-24T14:30:51.001000+00:00",
        "creationDate": "2023-08-24T14:30:51.001000+00:00",
        "cloneUrlHttp": "https://git-codecommit.eu-west-2.amazonaws.com/v1/repos/container-workshop",
        "cloneUrlSsh": "ssh://git-codecommit.eu-west-2.amazonaws.com/v1/repos/container-workshop",
        "Arn": "arn:aws:codecommit:eu-west-2:444554869397:container-workshop"
    }
}
```

(1.b) Pull the  
