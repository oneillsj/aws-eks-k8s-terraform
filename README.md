# aws-eks-k8s-terraform
Small test Kubernetes environment built on AWS EKS using Terraform


# Prereqs :
Have an AWS account with your access and secret key ready and exported to local env variables
e.g.
export AWS_ACCESS_KEY_ID="myID"
export AWS_SECRET_ACCESS_KEY="myKEY"

Download + install terraform
https://www.terraform.io/downloads.html
https://www.terraform.io/intro/getting-started/install.html

Download + install kubectl
https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl

Download + install heptio-authenticator-aws
https://github.com/kubernetes-sigs/aws-iam-authenticator
https://aws.amazon.com/blogs/opensource/deploying-heptio-authenticator-kops/
https://docs.aws.amazon.com/eks/latest/userguide/configure-kubectl.html

# Steps :

sudo su

clone repo
cd .. cluster
terraform init
terraform plan
terraform apply

Now the cluster will build. This will take approx 10 minutes.

mkdir ~/.kube/
touch ~/.kube/config
terraform output kubeconfig > ~/.kube/config

kubectl get pods 

If everything is installed and setup correctly you should ge the message 'No resources found.'

terraform output config-map-aws-auth > aws-auth.yaml
kubectl apply -f aws-auth.yaml
kubectl get nodes


cd ../kubernetes/
terraform init
terraform plan
terraform apply

kubectl get service -n demo-service -o wide


# Notes :
There is currently no free tier for EKS. Current usage rates are $0.20 per hour.

Next... Monitoring (access kube dashboard + grafana graphs for metrics)