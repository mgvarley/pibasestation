# Start the AIS service
sudo systemctl start ais.service
sudo systemctl enable ais.service

# Start the autossh service
sudo systemctl start autossh.service
sudo systemctl enable autossh.service

# Start the udp-tcp service
sudo systemctl start udp-tcp.service
sudo systemctl enable udp-tcp.service

# Start the tcp-udp service
sudo systemctl start tcp-udp.service
sudo systemctl enable tcp-udp.service

# Start the web app
npm start
