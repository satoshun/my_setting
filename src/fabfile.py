from fabric.api import local, task, cd
from fabric.colors import blue

import os

dev_null = open(os.devnull, 'w')
git_dir = '/Users/satouhayabusa/git/my'


def is_command_exist(command):
    from subprocess import Popen
    return Popen(['type', command], stdout=dev_null).wait() == 0


@task
def install(target='all'):
    def homebrew():
        if not is_command_exist('brew'):
            local('ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"')
            local('brew update')
            local('brew install bash-completion go imagemagick libmemcached lv node phantomjs python3 readline tig xz '
                  'git gradle jpeg memcached mysql qt redis tree '
                  'autoconf groonga libevent libtool mongodb nginx rbenv ruby-build sqlite ')

        def rbenv():
            local('rbenv install 2.0.0-p247')
            local('rbenv rehash')
            local('rbenv local 2.0.0-p247')

        def nodebrew():
            local('curl -L git.io/nodebrew | perl - setup')
            local('source ~/.bash_profile')
            local('nodebrew install v0.6.0')

        rbenv()

    def python():
        local('sudo easy_install pip')
        local('sudo pip install virtualenv virtualenvwrapper')
        local('sudo pip install sphinx fabric')

    def my_setting():
        with cd(git_dir):
            local('git clone git@github.com:satoshun/utility.git')

    if target == 'all':
        for name, func in locals().items():
            if callable(func):
                print(blue('call: ' + name))
                func()
    else:
        print(blue('call: ' + target))
        locals()[target]()
