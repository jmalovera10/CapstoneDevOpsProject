# Uncomment one execution line at a time. First execute the network creation part.
# When the network part is correctly deployed then uncomment the containers deploy and comment 
# the network deploy.

# STAGE 1
#echo "Creating network infrastructure...."
#./create.sh networkingstack network.yml network-parameters.json

# STAGE 2
#
#echo "Creating bastion infrastructure...."
#./create.sh bastionstack bastion.yml bastion-parameters.json

# STAGE 3
echo "Creating application infrastructure...."
./create.sh kubernetesstack kubernetes.yml kubernetes-parameters.json