# Wear Your Jersey [![Build Status](https://travis-ci.org/wear-your-jersey/wear-your-jersey.svg?branch=master)](https://travis-ci.org/wear-your-jersey/wear-your-jersey) [![Code Climate](https://codeclimate.com/github/wear-your-jersey/wear-your-jersey.png)](https://codeclimate.com/github/wear-your-jersey/wear-your-jersey)

Wear Yor Jersey is a extensible and open source platform with the intention of providing digital operations for associations focused on sports of any kind.

The project is developed by enthusiasts that seek a great future for sports teams of all sizes. Delivering technology that enables an online presence with a viable and sustentable way, and fostering stimulating a community to build platform extensions.

Thus the associations can create their own middle of media to divulgate your work and even increasing your his income with media spaces to sponsors and attraction of resources from associates.

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
$ bundle puma -p 5000
```

### Accessing

* Front: http://localhost:5000
* Admin session: http://localhost:5000/admin
	*  Email/Password: admin@example.com/password (Devise standard)

### Tests

This app uses Rspec and Factory Girl.

```
$ bundle exec rspec
```

---

## Project

The project progress it's being registered in milestones, in the repository itself.

If you want collaborate with Wear Your Jersey following some milestone, we recommended use this [way to turn GitHub issues in pull-requests](http://opensoul.org/2012/11/09/convert-a-github-issue-into-a-pull-request/)
