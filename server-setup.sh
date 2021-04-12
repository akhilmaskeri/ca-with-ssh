#!/bin/bash

# to get sshd running
mkdir /var/run/sshd

echo 'TrustedUserCAKeys /etc/ssh/ca.pub' >> /etc/ssh/sshd_config
echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config

echo "@cert-authority * $(cat /etc/ssh/ca.pub)" >>/etc/ssh/ssh_known_hosts

