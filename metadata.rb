name              'stager'
maintainer        'Jim Dowling'
maintainer_email  'jdowling@sics.se'
license           'Apache v.2'
description       'Stages Hops files for download'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.1'

depends 'build-essential'
depends 'ohai', '>= 4.1.0'
depends 'yum-epel'
depends 'compat_resource', '>= 12.16.3'
depends 'zypper'
depends 'kagent'


supports 'ubuntu', '= 16.04'
supports 'centos', '= 7.2'

recipe "stager::install", "Installs  stager"
recipe "stager::default", "Configures stager"


attribute "stager/dir",
          :description => "Base installation directory for Conda",
          :type => 'string'

attribute "stager/user",
          :description => "User that runs stager",
          :type => 'string'

attribute "stager/group",
          :description => "Group that runs stager",
          :type => 'string'

attribute "stager/port",
          :description => "Port for webserver",
          :type => 'string'

