railsmachine readme

    git submodule add https://github.com/opscode-cookbooks/apt.git cookbooks/apt
    git submodule add https://github.com/opscode-cookbooks/build-essential.git cookbooks/build-essential
    git submodule add https://github.com/opscode-cookbooks/openssl.git cookbooks/openssl
    git submodule add https://github.com/opscode-cookbooks/mysql.git cookbooks/mysql

    git submodule add https://github.com/opscode-cookbooks/application.git cookbooks/application
    git submodule add https://github.com/opscode-cookbooks/runit.git cookbooks/runit
    git submodule add https://github.com/opscode-cookbooks/unicorn.git cookbooks/unicorn
    git submodule add https://github.com/opscode-cookbooks/passenger_apache2.git cookbooks/passenger_apache2
    git submodule add https://github.com/opscode-cookbooks/tomcat.git cookbooks/tomcat
    git submodule add https://github.com/opscode-cookbooks/python.git cookbooks/python
    git submodule add https://github.com/opscode-cookbooks/gunicorn.git cookbooks/gunicorn
    git submodule add https://github.com/opscode-cookbooks/apache2.git cookbooks/apache2
    git submodule add https://github.com/opscode-cookbooks/php.git cookbooks/php

    git submodule add https://github.com/opscode-cookbooks/application_ruby.git cookbooks/application_ruby


Get needed submodules

    git submodule init
    git submodule update

Fire up vagrant VM

    vagrant up

Fire up vagrant without provisioining (so as to run chef-solo manually if needed)

    vagrant up --no-provision
	vagrant ssh
	sudo chef-solo -c /vagrant/solo.rb -j /vagrant/node.json

Note: `/vagrant` maps back to the host location `khanakhazana` from where it picks up `solo.rb` and `node.json`

