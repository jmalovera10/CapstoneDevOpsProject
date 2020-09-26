# Delete EKS and Bastion Stacks
aws cloudformation delete-stack --stack-name "capstone-eks"
aws cloudformation delete-stack --stack-name "capstone-bastion"

aws cloudformation wait stack-delete-complete --stack-name "capstone-eks"
echo "EKS Deleted..."
aws cloudformation wait stack-delete-complete --stack-name "capstone-bastion"
echo "Bastion Deleted..."

# Delete Networking Stack
aws cloudformation delete-stack --stack-name "capstone-network"
aws cloudformation wait stack-delete-complete --stack-name "capstone-network"
echo "Network Deleted..."
echo "Cleanup complete Deleted..."
