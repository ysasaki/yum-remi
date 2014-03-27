name             'yum-remi'
maintainer       'Yoshihiro Sasaki'
maintainer_email 'aloelight@gmail.com'
license          'MIT'
description      'Installs/Configures remi'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'yum-remi', 'Main remi configuration'

supports 'centos'

attribute 'remi/main/enabled',             :default => '1'
attribute 'remi/main/priority',            :default => '10'
attribute 'remi/php55/enabled',            :default => '0'
attribute 'remi/php55/priority',           :default => '10'
attribute 'remi/test/enabled',             :default => '0'
attribute 'remi/test/priority',            :default => '10'
attribute 'remi/debuginfo/enabled',        :default => '0'
attribute 'remi/debuginfo/priority',       :default => '10'
attribute 'remi/php55_debuginfo/enabled',  :default => '0'
attribute 'remi/php55_debuginfo/priority', :default => '10'
attribute 'remi/test_debuginfo/enabled',   :default => '0'
attribute 'remi/test_debuginfo/priority',  :default => '10'
