[Unit]
Description=node-app
[Service]
Type=simple
ExecStart=/usr/bin/node /opt/node-app/app.js
WorkingDirectory=/opt/node-app/
User=nobody
Group=nogroup
Environment=NODE_ENV=production
#Allow many incoming connections
LimitNOFILE=infinity
#Allow core dumps
LimitCORE=infinity
StandardInput=null
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=node-app
#Restart the service after 2 seconds if it crashes
Restart=always
RestartSec=10
[Install]
WantedBy=multi-user.target
