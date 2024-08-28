[defaults]
host_key_checking = False
inventory = ./host
reddy@LAPT-1-100318:~/kubernetes$ cat validate.sh
#!/bin/bash

# Define the host, user, and private key path
HOST="<ip>"
USER="neewee"
KEY="/home/reddy/.ssh/id_rsa"

ssh -q -i $KEY -o BatchMode=yes -o StrictHostKeyChecking=no $USER@$HOST 'exit 0'
RCODE=$?
if [ $RCODE -ne 0 ]; then
    echo "Connection failed"
else
    echo "Connection successful"
fi
