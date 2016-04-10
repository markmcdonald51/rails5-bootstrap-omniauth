## tech overview

* Rails5 / Ruby2.3
* postgres
* sass/slim/js
* bootstrap

### first time ruby set-up via homebrew

* install rbenv

    $ brew install rbenv

* ensure latest ruby build

    $ brew upgrade ruby-build

### dev env set-up

* on osx, install postgresapp

* clone repo

* install required ruby verision (2.3.0 at time of writing)
    $ rbenv install 2.3.0

* install bundler

    $ gem install bundler


* add required config/application.yml file (request from dev)

quick start:

    $ bundle install
    $ rake db:setup


### unit + integration tests

primary tools: minitest/factorygirl

    $ rails test

code coverage report provided by simplecov:

    $ coverage/index.html

### capturing and restoring a backup dump from heroku (example)

    $ heroku pg:backups public-url -a *APP_NAME*
    $ pg_restore --verbose --clean --no-acl --no-owner -h localhost -d gs-dev ~/Downloads/9fd28ed4-d124-4520-af47-47b4c5b0dbc5


###  dev short-cuts / niceties (optional)

Some developers don't like livereload (which is enabled by default in development).  To disable it in your dev env, add this to the top of your config/application.yml file:

    DISABLE_LIVERELOAD: 'yes'


## Environments

each environment has a separate environment file, server and cname.

#### Production
    git@heroku.com:xxxx.git

#### Stage

    git@heroku.com:xxxxx-stage.git

#### Dev
(experiments, develop branch auto deploys)
    git@heroku.com:xxxx-dev.git


* All Env vars are managed via Figaro gem.


## misc

#### putting the site into maintenance mode (displays static "site offline for maintenance page")

  $ heroku maintenance:on --app *APP_NAME*

also

  $ heroku maintenance:off --app *APP_NAME*


