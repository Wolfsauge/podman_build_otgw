#!/usr/bin/env bash

set -o pipefail

echo "Pod started.."

# Copy SSH public key, if supplied by RunPod

if [[ $PUBLIC_KEY ]]
then
  echo "Setting up SSH authorized_keys..."
  mkdir -p ~/.ssh
  echo "$PUBLIC_KEY" >> ~/.ssh/authorized_keys
  chmod 700 -R ~/.ssh
  ssh-keygen -v -l -f ~/.ssh/authorized_keys
fi

# Delete any SSH host keys and regenerate random new ones

echo "Regenerating SSH host keys.."
rm -f /etc/ssh/ssh_host_* && \
  ssh-keygen -A

# Dump the newly generated SSH host public keys to stdout

for SSH_HOST_PUB_KEY in /etc/ssh/ssh_host_*.pub
do
  echo "Host key: $SSH_HOST_PUB_KEY"
  ssh-keygen -lf $SSH_HOST_PUB_KEY
done

# Add a custom path for the default user

echo -e "\nexport PATH=\$PATH:/root/bin" >> /root/.bashrc
service ssh start

# Dumping environment to disk

set | \
  grep -v "^PUBLIC_KEY=" \
  > /workspace/text-generation-webui/docker/RunPod/environment

echo "Starting webui.."
/root/bin/run-text-generation-webui.sh &

echo "RunPod startup script finished."

sleep infinity
