Celebrazil
================

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.3.0
- Rails 4.2.5

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------


rails s -b $IP -p $PORT
sudo service postgresql start           (start no posgresql)


rails g model Product title:string description:text ingredients:text unit_price:float min_portion:integer active:boolean image_url:string portion:references
rails g model OrderStatus description:string
rails g model Order rmk:text sub_total:float tax:float total:float user:references order_status:references
rails g model OrderItem qty:integer unit_price:float total_price:float order:references product:references
