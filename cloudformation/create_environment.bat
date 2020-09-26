:: Deploy Networking
aws cloudformation deploy ^
    --template-file "./stacks/network.yml" ^
    --stack-name "capstone-network" ^
    --tags project=capstone
aws cloudformation wait stack-create-complete --stack-name "capstone-network"

:: Deploy Bastion
aws cloudformation deploy ^
    --template-file "./stacks/bastion.yml" ^
    --stack-name "capstone-bastion" ^
    --tags project=capstone
aws cloudformation wait stack-create-complete --stack-name "capstone-bastion"

:: Deploy EKS Cluster
aws cloudformation deploy ^
    --template-file "./stacks/eks.yml" ^
    --stack-name "capstone-eks" ^
    --tags project=capstone
aws cloudformation wait stack-create-complete --stack-name "capstone-eks"