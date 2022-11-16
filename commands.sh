# Clone Repo
git clone git@github.com:mcrajesh05/flask-sklearn-ci-cd.git

#Get inside repo
cd flask-sklearn-ci-cd

#create virtual env
python3 -m venv ~/.devops

# activate virtual env
source ~/.devops/bin/activate
# install all project related libraries
make install


# Deploy the app to azure 
# Provide the web app name as a globally unique value and the name of the existing resource group
#https://flaskmlservice.azurewebsites.net
az webapp up --name flaskmlservice --resource-group devops --runtime "PYTHON:3.10" --sku B1



########################## TO Configure VM based agent pool
# Copy and use the link from the Download button
curl -O https://vstsagentpackage.azureedge.net/agent/2.213.2/vsts-agent-linux-x64-2.213.2.tar.gz
# Create the agent
mkdir myagent && cd myagent
tar zxvf ~/vsts-agent-linux-x64-2.213.2.tar.gz
# Configure the agent
./config.sh

sudo apt-get update
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
# Installed install Python3.10
sudo apt install python3.10
sudo apt-get install python3.10-venv
sudo apt-get install python3-pip
sudo apt install python3-pip
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

# Important tools for the Pipeline build steps
sudo apt-get install python3.10-distutils
sudo apt-get -y install zip

pip install pylint

# Update the Path for Pylint
export PATH=$HOME/.local/bin:$PATH

sudo groupadd docker
sudo usermod -aG docker $USER

sudo ./svc.sh install
sudo ./svc.sh start
