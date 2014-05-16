chef-lxc-min
============

1. create a ubuntu 14.04 vm. vagrant
    The Current Vagranfile has a provisioner to set up a proper ubuntu vm
    * Install lxc. apt-get install build-essential liblxc1 lxc lxc-dev lxc-templates python3-lxc
    * Install ruby (rbenv or rvm), bundler etc
2. ssh into the vm and clone https://github.com/opscode/chef-metal-lxc.git into the ubuntu vm
    * run bundle installl
    * copy over the test cookbooks. cp -r test/cookbooks .
    * test it: sudo bundle exec chef-client -z -o 'recipe[lxctests::simple2]'


This is barebone, if this is working, things are right. next step will
be use the same against actual chef server and with arbitrary recipes.
