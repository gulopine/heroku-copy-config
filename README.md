# heroku-copy-config

Simple command to copy config vars from one Heroku app to another.

## Installation

Add the heroku gem plugin:

    $ heroku plugins:install https://github.com/scottpersinger/heroku-copy-config.git
    Installing heroku-copy-config... done

## Usage

    heroku config:copy <target app name> CONFIGVAR1 [CONFIGVAR2...]
    

    $ heroku config:copy my-other-app BROKER_URL
    Copying BROKER_URL

    $ heroku config:copy my-other-app REDIS_URL MEMCACHE_URL -a the-source-app
    Copying REDIS_URL
    Copying MEMCACHE_URL

## License

MIT License

## Author

Scott Persinger (scottp@heroku.com)
