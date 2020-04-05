# Readme
This readme describes the installation of required docker images for the SaltStack introduction at Warpnet.

# Docker compose
Before, it was required to manually build images (you still can), but we've since migrated to docker-compose.


## Building and starting
To get everything up and running, you can simply run the following:

```bash
docker-compose up --no-deps --build
```

## Accepting the minions
When the build and start finish, you'll need to log in to the master and accept the two minions:
```bash
docker exec -it docker-saltstack_saltmaster_1 /bin/bash
salt-key -A 
```

You'll get something like the following:

```console
The following keys are going to be accepted:
Unaccepted Keys:
minion01
minion02
Proceed? [n/Y] y
Key for minion minion01 accepted.
Key for minion minion02 accepted.
```

## Testing the connection
Check if salt can ping the machines:

```bash
salt \* test.ping
minion01:
    True
minion02:
    True
```

Now you're all ready to get started!
