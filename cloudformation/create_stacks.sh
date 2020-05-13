# Uncomment one execution line at a time. First execute the network creation part.
# When the network part is correctly deployed then uncomment the containers deploy and comment 
# the network deploy.

echo "Creating network infrastructure...."
./create.sh networkingstack network.yml network-parameters.json

#echo "Creating application infrastructure...."
#./create.sh containerstack container.yml container-parameters.json