# 1-install_a_package.pp

# Define a package resource for Flask
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Ensure that python3-pip is installed
package { 'python3-pip':
  ensure => present,
}
