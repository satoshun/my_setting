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
    def homebrew():
        if not is_command_exist('brew'):
            local('ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"')
            local('brew update')

            for item in ['bash-completion', 'go', 'imagemagick', 'libmemcached',
                         'lv', 'node', 'python3', 'readline', 'tig', 'xz',
                         'git', 'gradle', 'jpeg', 'memcached', 'mysql', 'redis', 'tree',
                         'autoconf', 'groonga', 'mongodb', 'nginx', 'rbenv', 'ruby-build', 'sqlite', 'phantomjs', 'qt']:
                local('brew install {0}'.format(item))
                local('sudo pip-3.3 install virtualenv virtualenvwrapper')

            local('brew install "http://toolbelt.treasure-data.com/brew/td-agent.rb"')

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

    def dmg():
        # https://github.com/phinze/homebrew-cask
        local('brew tap phinze/cask')
        local('brew install brew-cask')
        for package in [
            'google-chrome', 'dropbox', 'skydrive', 'skype', 'sourcetree',
            'android-studio', 'hipchat', 'virtualbox', 'vagrant', 'xtrafinder',
            'iterm2', 'java', 'alfred', 'dash', 'evernote', 'firefox', 'bettertouchtool',
            'keyremap4macbook']:
            local('brew cask install {0}'.format(package))

    if target == 'all':
        for name, func in locals().items():
            if callable(func):
                print(blue('call: ' + name))
                func()
    else:
        print(blue('call: ' + target))
        locals()[target]()
