# Cipher Movies

## Setup

To create and migrate your test and development databases, run the following commands from your project root:

```shell
bundle install
bin/rake db:create db:migrate db:test:prepare
```

## Starting the Server

To start the server, run the following from your project root:

```shell
bin/rails s
```

## Tests

To start the test suite, run the following command from your project root:

```shell
rspec
```
