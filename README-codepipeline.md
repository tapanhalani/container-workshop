# Create codepipeline


(1.c) Create Codepipeline using AWS cloudformation stack:

```bash
$ aws cloudformation create-stack \
    --profile container-workshop \
    --stack-name codepipeline-container-workshop \
    --template-body file://infra/codepipeline/pipeline.yaml \
    --capabilities CAPABILITY_NAMED_IAM 
```


