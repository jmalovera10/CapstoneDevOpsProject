echo "Creating network infrastructure...."
./create networkingstack network.yml network-parameters.json
echo "Creating application infrastructure...."
## ./create containerstack container.yml container-parameters.json