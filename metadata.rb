name 'nginx_amplify'
maintainer 'Sarath'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures nginx_amplify'
long_description 'Installs/Configures nginx_amplify'
version '0.1.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/nginx_amplify/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/nginx_amplify' if respond_to?(:source_url)

depends 'nginx', '~> 7.0.0'

source_url 'https://github.com/sckuchi/nginx_amplify'
issues_url 'https://github.com/sckuchi/nginx_amplify/issues'

supports 'centos'
