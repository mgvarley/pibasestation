# Blacklisting the USB device
echo Blacklisting USB device
modprobe -r dvb_usb_rtl28xxu

# Start the AIS service
echo Starting AIS Service
systemctl start ais.service
systemctl enable ais.service

# Generate an ssh key and copy up to the forwarder server
echo Generating SSH key and pushing to forwarder
echo -e  'y\n'|ssh-keygen -q -t rsa -N "" -f /root/.ssh/id_rsa 1>/dev/null
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa -o StrictHostKeyChecking=no ais@46.101.246.86

# Start the autossh service
echo Starting autossh Service
systemctl start autossh.service
systemctl enable autossh.service

# Start the udp-tcp service
echo Starting udp-tcp Service
systemctl start udp-tcp.service
systemctl enable udp-tcp.service

# Start the web app
echo Starting web app
npm start
