# Install Puppet

cat > /etc/yum.repos.d/puppetlabs.repo << EOM
[puppet6]
name=puppetlabs
baseurl=http://yum.puppetlabs.com/puppet6/el/7/\$basearch
enabled=1
gpgcheck=0
EOM

yum -y install puppet-agent-6.25.1-1.el7.x86_64 ruby-shadow ruby-2.0.0.648-39.el7_9.x86_64 rubygems-2.0.14.1-39.el7_9.noarch

