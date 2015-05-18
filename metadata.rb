name             'druid'
maintainer       'N3TWORK'
maintainer_email 'yuval@n3twork.com'
license          'Apache 2.0'
description      'Installs/Configures druid'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.2'
source_url       'https://github.com/N3TWORK/chef-druid' if defined?(source_url)
issues_url       'https://github.com/N3TWORK/chef-druid/issues' if defined?(issues_url)

depends "java"
