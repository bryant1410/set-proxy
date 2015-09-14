# set-proxy

Script that sets env variables for proxy depending on the configured subnets.

## Installation

Thi script is for Linux. Python 3, pip and some Python packages are needed. You can install it in Ubuntu (or Debian based) running:

```bash
sudo apt-get install python3 python3-pip
sudo pip3 install netaddr netifaces
```

In Fedora (or RedHat based) you need to run:

```bash
sudo yum install python3 python3-pip
sudo pip3 install netaddr netifaces
```

To install the script just clone the repo in your home and add an alias for quick execution. Add it to `~/.bashrc` so it's ran at the beginning of every non-login interactive shell:

```bash
cd ~
git clone https://github.com/bryant1410/set-proxy.git .set-proxy
echo 'alias set-proxy="source $HOME/.set-proxy/set_proxy.sh"' >> ~/.bashrc
echo 'set-proxy' >> ~/.bashrc
```

Start a new shell in order to see the changes.

To run it whenever you want, do:

```
set-proxy
```

## Configuration

By default, it sets the proxy `proxy.fing.edu.uy:3128` if under subnet 164.0.0.0/8 in `eth0` or `wlan0`. You can change the subnets and interfaces in the file `check_subnet.py` and the proxy configuration in `set_proxy.sh`.

In order to keep these environment variables in sudo, run the following:

```bash
sudo visudo
```

Then add the line:

```bash
Defaults env_keep += "ftp_proxy http_proxy https_proxy no_proxy"
```
