# Delete EKS and Bastion Stacks
aws cloudformation delete-stack --stack-name "capstone-eks"
aws cloudformation delete-stack --stack-name "capstone-bastion"

aws cloudformation wait stack-delete-complete --stack-name "capstone-eks"
aws cloudformation wait stack-delete-complete --stack-name "capstone-bastion"

# Delete Networking Stack
aws cloudformation delete-stack --stack-name "capstone-network"
