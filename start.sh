#Install python environment dependencies
sudo apt-get install python3-pip
pip install paho-mqtt

#Install javascript environment dependencies
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
nvm install 18
sudo apt-get install npm --no-install-recommends

#Start applications in the corret order
screen -S mosquitto -dm bash -c 'cd MosquittoMQTT; bash run.sh'
screen -S getter -dm bash -c 'cd Getter; bash run.sh'
screen -S sub -dm bash -c 'cd Subscriber; bash run.sh'
screen -S pub -dm bash -c 'cd Publisher; bash run.sh'
