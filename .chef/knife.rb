current_dir = File.dirname(__FILE__)
user = ENV['OPSCODE_USER'] || ENV['USER']
orgname = ENV['ORGNAME'] || "chef"
chef_server_url          "https://chef-server.local"

node_name                user
client_key               "#{user}.pem"
validation_client_name   "#{orgname}-validator"
validation_key           "#{orgname}-validator.pem"
syntax_check_cache_path  "syntax_check_cache"
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright "Robert J. Berger"
cookbook_license "apachev2"
cookbook_email "rberger@ibd.com"

  
