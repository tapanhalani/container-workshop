# Create EKS cluster

(1.a) Create AWS EKS clsuter for running nodejs application image

```
cd ~/awsug-container-workshop/github/container-workshop
eksctl create cluster -f ./infra/eksctl-cluster.yaml --profile container-workshop
```

Successful output should like this:

```
2023-08-24 17:51:34 [ℹ]  kubectl command should work with "/home/user/.kube/config", try 'kubectl get nodes'
2023-08-24 17:51:34 [✔]  EKS cluster "container-workshop" in "us-east-1" region is ready
```

Test cluster access using kubectl with the following commands:

```
kubectl cluster-info  # prints k8s control-plane and coredns endpoints 
kubectl get nodes   # prints worker nodes available in the cluster 
kubectl get pods -A     # prints pods in all namespaces
```


[Click here for steps to creating codecommit repo](README-codecommit-ecr.md)

