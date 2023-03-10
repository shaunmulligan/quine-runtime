# Make sure serial device has permissions
sudo chmod 777 /dev/ttyACM0

# Launch prind in detached mode
cd ~/prind
sudo DOCKER_HOST=unix:///data/docker/run/docker.sock docker-compose --profile mainsail --profile klipperscreen up -d
cd ~

# Setup CANbus interface
bash  ~/quine-runtime/scripts/canbus.sh
