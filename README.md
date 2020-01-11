There are a few goals for this project:

1) Create an in-house development environment to build and test stuff.

2) Create a real physical server rack using Raspberry Pis.

3) Create a test virtual server rack using Vagrant/VirtualBox.

4) Learn to use Ansible to provision the servers.

5) Learn to setup a Kubernetes/Docker system.


The physical rack:

* 8 RPis: Raspian Buster Lite 2019-09-26

* 1 RPi: Ubuntu Server 19.10.1 arm64


The virtual rack:

* 8 VMs: "debian/buster64"

* 1 VM: "hashicorp/bionic64"


This is the overview of the different servers:

* ctrl - This is the controller running Ansible and it will run the show.

* web1 - A web server

* db1 - A database server

* scm - A source control management server. This will run Fossil and Gitolite/GitWeb

* kube - This is 4 servers with one master/host and 3 normal hosts

* test1 - Just to have a different Operating System

There isn't much difference (in Ansible) between Debian and Ubuntu.

But by having the two different Operating Systems, it gives me the ability to branch the provisioning by the OS. 

If in the future, if this system was created on normal server hardware or even in the cloud, the code would be in place to branch based on OS.
