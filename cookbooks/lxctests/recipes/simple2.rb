require 'chef_metal'
require 'chef_metal_lxc/lxc_provisioner'
with_provisioner ChefMetalLXC::LXCProvisioner.new
# default ubuntu template will install 14.04, where chef is not well tested, lets use 12.04
with_provisioner_options 'template' => 'ubuntu',
                         'template_options'=>['-r','precise'],
                         'config_file' => '/tmp/empty.conf',
                         'extra_config' => { 'lxc.network.type' => 'veth', 
                                             'lxc.network.flags' => 'up', 
                                             'lxc.network.link' => 'lxcbr0', 
                                             'lxc.network.name' => 'eth0' 
                                            }
file '/tmp/empty.conf' do
  content ''
end
machine 'simple'
