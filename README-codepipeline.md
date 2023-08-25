# Create codepipeline


(1.a) Create Codepipeline using AWS cloudformation stack:

```bash
$ aws cloudformation create-stack \
    --profile container-workshop \
    --stack-name codepipeline-container-workshop \
    --template-body file://infra/codepipeline/pipeline.yaml \
    --capabilities CAPABILITY_NAMED_IAM 
```


(1.b) Create IAMIdentityMapping to authorize `CodeBuildServiceRole` to access k8s resources in the cluster. This IAM role ARN can be found in codepipeline cloudformation stack's output `CodeBuildServiceRoleARN`

```bash
$ eksctl create iamidentitymapping \
    --profile container-workshop \
    --cluster container-workshop \
    --arn <CodeBuildServiceRoleARN> \
    --group system:masters \
    --username codebuildKubectlRole
```


