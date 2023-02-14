sudo apt-get install mosquitto mosquitto-clients
sudo systemctl start mosquitto.service
mosquitto_sub -v -t "#"
