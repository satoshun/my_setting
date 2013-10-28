from fabric.api import local, task


@task
def install():
    local('ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"')
    local('brew install apple-gcc42  bash-completion docbook-xsl gettext go imagemagick libmemcached lv msgpack node phantomjs python3 readline scons tig xz '
          'asciidoc cmake freetype git gradle jpeg libpng memcached mysql openssl pkg-config qt redis shiboken tree '
          'autoconf docbook gdbm gnu-getopt groonga libevent libtool mongodb nginx pcre python rbenv ruby-build sqlite xmlto')
