echo "Updating network infrastructure...."
./update.sh networkingstack network.yml network-parameters.json
echo "Updating application infrastructure...."
./update.sh containerstack container.yml container-parameters.json