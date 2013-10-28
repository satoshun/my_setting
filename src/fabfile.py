from fabric.api import local, task
from fabric.colors import blue


@task
def install(target='all'):
    def homebrew():
        local('ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"')
        local('brew update')
        local('brew install apple-gcc42  bash-completion docbook-xsl gettext go imagemagick libmemcached lv msgpack node phantomjs python3 readline scons tig xz '
              'asciidoc cmake freetype git gradle jpeg libpng memcached mysql openssl pkg-config qt redis shiboken tree '
              'autoconf docbook gdbm gnu-getopt groonga libevent libtool mongodb nginx pcre python rbenv ruby-build sqlite xmlto')

    def python():
        local('sudo easy_install pip')
        local('sudo pip install virtualenv virtualenvwrapper')
        local('sudo pip install sphinx fabric')

    if target == 'all':
        for name, func in locals():
            if callable(func):
                print(blue('call: ' + name))
                func()
