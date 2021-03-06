## tech overview

* Rails5 / Ruby2.3
* postgres
* sass/slim/js
* bootstrap


## dev env set-up

### first time ruby set-up via homebrew

install rbenv

    $ brew install rbenv

ensure latest ruby build

    $ brew upgrade ruby-build


### project env setup

on osx, install and run [postgresapp](http://postgresapp.com/)

install required ruby verision (2.3.1 at time of writing)

    $ rbenv install 2.3.1

install bundler

    $ gem install bundler


add required config/application.yml file (request from dev)
working sample:

```
    GOOGLE_OAUTH_CLIENT_ID: xxxx
    GOOGLE_OAUTH_SECRET: xxx
    DISABLE_LIVERELOAD: 'yes'

    production:
      ASSET_HOST: https://xxxxx.cloudfront.net

    stage:
      ASSET_HOST: https://xxxx.cloudfront.net
```


    $ bundle install
    $ rake db:setup
    $ rails s

rails server should be running at http://localhost:3000/


### local dev email

Mailcatcher is used as a proxy to handle local email

To install and run mailcatcher:

    $ gem install mailcatcher
    $ mailcatcher

mailcatcher gui is now running at:  http://localhost:1080/

## unit + integration tests

primary tools: minitest/factorygirl

    $ rails test

code coverage report provided by simplecov:

    $ coverage/index.html

## other dev commands

### capturing and restoring a backup dump from heroku (example)

    $ heroku pg:backups public-url -a *APP_NAME*
    $ pg_restore --verbose --clean --no-acl --no-owner -h localhost -d gs-dev ~/Downloads/9fd28ed4-d124-4520-af47-47b4c5b0dbc5


### short-cuts / niceties (optional)

Some developers don't like livereload (which is enabled by default in development).  To disable it in your dev env, add this to the top of your config/application.yml file:

    DISABLE_LIVERELOAD: 'yes'

### putting the site into maintenance mode (displays static "site offline for maintenance page")

  $ heroku maintenance:on --app *APP_NAME*

also

  $ heroku maintenance:off --app *APP_NAME*


## Environments

each environment has a separate environment file, server and cname.

### Production
    git@heroku.com:xxxx.git

### Stage

    git@heroku.com:xxxxx-stage.git

### Dev
(experiments, develop branch auto deploys)
    git@heroku.com:xxxx-dev.git


* All Env vars are managed via Figaro gem.



