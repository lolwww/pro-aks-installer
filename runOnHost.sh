#!/bin/bash

# Copy installation script to host
cp /tmp/install.sh /host

# Copy cleanup script to host
cp /tmp/cleanup.sh /host

# Copy wait script to the host 
cp /wait.sh /host

# Give execute priv to install script
/usr/bin/nsenter -m/proc/1/ns/mnt -- chmod u+x /tmp/install/install.sh

# Give execute priv to cleanup script
/usr/bin/nsenter -m/proc/1/ns/mnt -- chmod u+x /tmp/install/cleanup.sh

# Give execute priv to wait script
/usr/bin/nsenter -m/proc/1/ns/mnt -- chmod u+x /tmp/install/wait.sh

# Wait for Node updates to complete
/usr/bin/nsenter -m/proc/1/ns/mnt /tmp/install/wait.sh

# If the /tmp folder is mounted on the host then it can run the script
/usr/bin/nsenter -m/proc/1/ns/mnt /tmp/install/install.sh

# Sleep so that the Pod in the DaemonSet does not exit
sleep infinity
