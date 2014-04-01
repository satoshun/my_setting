from fabric.api import local, task
from fabric.colors import blue

import os

dev_null = open(os.devnull, 'w')
git_dir = '~/git/my'


def is_command_exist(command):
    from subprocess import Popen
    return Popen(['type', command], stdout=dev_null).wait() == 0


@task
def install(target='all'):
    def rbenv():
        local('rbenv install 2.0.0-p247')
        local('rbenv rehash')
        local('rbenv local 2.0.0-p247')
        local('sudo gem install bundler')

    def nodebrew():
        local('curl -L git.io/nodebrew | perl - setup')
        local('source ~/.bash_profile')
        local('nodebrew install v0.10.x')

    def python():
        if not is_command_exist('pip'):
            local('sudo easy_install pip')
            local('sudo pip install virtualenv virtualenvwrapper')
            local('sudo pip install sphinx sphinxcontrib-blockdiag')

    def my_setting():
        local('git clone git@github.com:satoshun/utility.git {0}/utility'.format(git_dir))

    if target == 'all':
        for name, func in locals().items():
            if callable(func):
                print(blue('call: ' + name))
                func()
    else:
        print(blue('call: ' + target))
        locals()[target]()
