Run the script proxyconf with the first parameter to the client ip. Example

```
$ sudo sh proxyconf.sh 95.19.109.66
```

To run it directly from the ubuntu server, try these set of commands (modify the IP to the client ip):

```
$ sudo wget ./proxyconf.sh https://raw.githubusercontent.com/lienbcn/proxyconf/master/proxyconf.sh ; sudo chmod 777 ./proxyconf.sh ; sudo sh ./proxyconf.sh 95.19.96.2
```
