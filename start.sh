# Start the AIS service
echo Starting AIS Service
systemctl start ais.service
systemctl enable ais.service

# Start the autossh service
echo Starting autossh Service
systemctl start autossh.service
systemctl enable autossh.service

# Start the udp-tcp service
echo Starting udp-tcp Service
systemctl start udp-tcp.service
systemctl enable udp-tcp.service

# Start the tcp-udp service
echo Starting tcp-udp Service
systemctl start tcp-udp.service
systemctl enable tcp-udp.service

# Start the web app
echo Starting web app
npm start
