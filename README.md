# workshop-ansible
Ansible playbook to fire up my Docker workshop environment

This tool will use Ansible to deploy the RHTPS Docker workshop environment.

## Not for production
Note that this repo is currently only good for training. Don't use it for production.

## Setup
In order to use this demo, you need to have:
* An account with [Amazon Web Services](https://aws.amazon.com/premiumsupport/signup/)
* Ansible [installed locally](http://docs.ansible.com/ansible/intro_installation.html)
* [Python 2.7](https://www.python.org/downloads/)
* AWS CLI tools [installed](http://docs.aws.amazon.com/cli/latest/userguide/installing.html#install-with-pip)
  * You must run `aws configure` and populate your access and secret key variables

## Usage
Once you have the tools from above installed and configured, use this process to quickly spin up a distributed, replicated Gluster volume.

First, review the default settings in [vars.yaml](vars.yaml).

```
$ ssh-agent bash
$ ssh-add /path/to/instancekey.pem
$ git clone https://github.com/jason-callaway/docker-workshop.git
$ cd workshop-ansible
$ ./run.sh 
```

The instances will be assigned Route 53 A records in the format of ```student-n.env_tag.rhtps.io```.
