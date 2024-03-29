# Wear Your Jersey

[![Build Status](https://travis-ci.org/wear-your-jersey/wear-your-jersey.svg?branch=master)](https://travis-ci.org/wear-your-jersey/wear-your-jersey) [![Code Climate](https://codeclimate.com/github/wear-your-jersey/wear-your-jersey.png)](https://codeclimate.com/github/wear-your-jersey/wear-your-jersey) [![Code Climate](https://codeclimate.com/github/wear-your-jersey/wear-your-jersey/coverage.png)](https://codeclimate.com/github/wear-your-jersey/wear-your-jersey) [![Dependency Status](https://gemnasium.com/wear-your-jersey/wear-your-jersey.svg)](https://gemnasium.com/wear-your-jersey/wear-your-jersey)

Wear Yor Jersey is a extensible and open source platform with the intention of providing digital operations for associations focused on sports of any kind.

Thus the associations can create their own middle of media to divulgate your work and even increasing your income with media spaces to sponsors and attraction of resources from associates.

### Dependencies

* Ruby >= 2.0.0
* Rails >= 4.0
* Postgres
* ImageMagick

### Instaling

```
$ git clone git@github.com:wear-your-jersey/wear-your-jersey.git
$ cd wear-your-jersey
$ cp config/database.yml.example config/database.yml
$ bundle install
$ bundle exec rake db:create db:migrate
```

### Seeds to development environment

```
$ bundle exec rake db:seed:development
```

### Running

```
$ bundle exec puma
```

### Accessing

* Front: ```http://localhost:[port]```
* Admin session: ```http://localhost:[port]/admin```
	*  Email/Password: admin@example.com/password (Devise standard)

### Tests

This app uses Rspec and Factory Girl.

```
$ bundle exec rspec
```
