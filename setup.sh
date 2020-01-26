az group create --name rancherlab --location southeastasia
az vm create --resource-group rancherlab --name rancherhost --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data SS.txt  
az vm open-port --resource-group rancherlab --name rancherhost --port 443 --priority 1001
