#!/bin/bash

systemctl start org.cups.cupsd.socket
lpadmin -p syarochanwkawaii -E -v socket://192.168.0.156
