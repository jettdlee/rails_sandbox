# Rails Sandbox
A rails sandbox application for testing and POC rails processes

Database: Postgresql

Applies code from:
Sustainable Web Development Ruby on Rails - David Copeland (https://sustainable-rails.com/)

Set up postgres

Set up user and .env file
```
POSTGRES_USER='postgres'
POSTGRES_HOST='localhost'
POSTGRES_DB='rails_sandbox_development'
POSTGRES_TEST_DB='rails_sandbox_test'
```

Make sure bin/setup is executable
```
chmod +x bin/setup
```

## Setup
1. Pull down the app from version control
2. Make sure you have Postgres running
3. `bin/setup`
47
## Running The App
1. `bin/run`
## Tests and CI
1. `bin/ci` contains all the tests and checks for the app
2. `tmp/test.log` will use the production logging format
*not* the development one.
## Production
* All runtime configuration should be supplied
in the UNIX environment
* Rails logging uses lograge. `bin/setup help`
can tell you how to see this locally
