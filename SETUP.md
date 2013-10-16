
Minecraft Server Setup
======================

Note: only tested on Ubuntu 12.04 32bit, and requires 1GB RAM.

To install on a server:

```sh
$ wget -qO- https://raw.github.com/rowanmanning/minecraft-server/master/setup/init.sh | bash
```

The minecraft server should start when the server does. You can also use:

```sh
$ sudo start minecraft
$ sudo stop minecraft
```


Local
-----

Don't run the init script on your local machine. You should use [Vagrant](http://www.vagrantup.com/) for this.

Set up vagrant:

```sh
$ vagrant box add precise32 http://files.vagrantup.com/precise32.box
$ vagrant up
```

Now SSH into your new VM:

```sh
$ vagrant ssh
```

Now you can run the setup script above.
