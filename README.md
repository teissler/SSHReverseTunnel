# SSH Reverse Tunnel

SSH Reverse Tunnel addon for [Victron Energy Venus](https://github.com/victronenergy/venus).

## Installation

You must have installed [SetupHelper](https://github.com/kwindrem/SetupHelper)!

### GUI

1. Go to *Settings* > *Package Manager* > *Inactive Packages*
1. Select *New* to add a package
1. Enter **SSHReverseTunnel** as Package name
1. Enter **teissler** as GitHub user
1. Enter **latest** as GitHub branch or tag
1. Select *Proceed*
1. Go back to *Active packages*
1. Select *SSHReverseTunnel*
1. Select *Install*
1. Select *Proceed*
1. Installation finished
1. Start configuration via CLI

### CLI

```
wget -qO - https://github.com/teissler/SSHReverseTunnel/archive/latest.tar.gz | tar -xzf - -C /data
mv /data/SSHReverseTunnel-latest /data/SSHReverseTunnel
/data/SSHReverseTunnel/setup
```

## Configuration

Configuration must be done via CLI.

```
vi /data/SSHReverseTunnel/SSHReverseTunnel.conf
```

### Variables

REMOTE_HOST: Remote host to connect to.  
REMOTE_USER: Remote user used to login to REMOTE_HOST.  
REMOTE_PORT: SSH Port of the REMOTE_HOST.  
REMOTE_LISTENING_PORT: Port to listen for connection on REMOTE_HOST.  

