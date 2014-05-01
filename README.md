chef-lxc-min
============

1) create a ubuntu 14.04 vm. vagrant
2) install lxc. apt-get install build-essential liblxc1 lxc lxc-dev lxc-templates python3-lxc
3) install ruby (rbenv or rvm), bundler etc
4) clone https://github.com/opscode/chef-metal-lxc.git
5) run bundle installl
6) copy over the test cookbooks. cp -r test/cookbooks .
7) test it: sudo bundle exec chef-client -z -o 'recipe[lxctests::simple2]'


This is barebone, if this is working, things are right. next step will
be use the same against actual chef server and with arbitrary recipes.
