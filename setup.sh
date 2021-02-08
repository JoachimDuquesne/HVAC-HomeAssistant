sudo apt update
sudo apt install python3 python3-dev python3-venv python3-pip libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5
python3 -m venv .
source bin/activate
python3 -m pip install wheel
pip3 install homeassistant

sudo cp home-assistant@joachim.service /etc/systemd/system/home-assistant@joachim.service
sudo systemctl --system daemon-reload
sudo systemctl enable home-assistant@joachim
sudo systemctl start home-assistant@joachim
