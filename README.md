Timesheet Manager
========================
[![Build Status](https://travis-ci.org/jsminet/timesheet-manager.svg?branch=master)](https://travis-ci.org/jsminet/timesheet-manager)

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.1
- Rails 4.2.5
- Postgres

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

- git clone https://github.com/jsminet/timesheet-manager.git
- bundle install
- rake db:install
- rails s -p 3000

Documentation and Support
-------------------------

To create a postgres user:

$ sudo -u postgres createuser -s USERNAME
$ sudo -u postgres psql (in order to change password)
$ postgres$ \password USERNAME

TODO list
---------

- Manage timesheet by user id
- [Add Date Picker](https://github.com/eternicode/bootstrap-datepicker)
- Add polymorphic link between user,vacancy and timesheet
- Manage minimum time unit (half day)
- Create reporting for both internal and customer timesheet

Similar Projects
----------------

Credits
-------

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

License
-------

[WTFPL](https://fr.wikipedia.org/wiki/WTFPL)