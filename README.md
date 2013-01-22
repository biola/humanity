Humanity
========

Humanity is a Ruby on Rails mixin that aims to consolidate typical user model functionality into a reusable Ruby gem.

Installation
------------

Add the gem to your `Gemfile`

    gem 'humanity'

Include Humanity in your user model

    class User < ActiveRecord::Base
      include Humanity::Base
      ...
    end

In the terminal run

    rails generate humanity
    rake db:migrate

__Tip:__ If you don't want your model to be called user, or you'd like to make other changes, just edit the generated `create_user` migration before running `rake db:migrate`.

What You Get
------------

Out of the box your user model will have the following attributes

- username
- first_name
- last_name
- title
- email
- department
- photo_url
- current_login_at
- last_login_at
- login_count

the following associations

- assignments
- roles

__Note:__ *users have_many roles through assignments*

and the following methods

- name
- role_symbols  
  *for declarative_authorization_support*
- has_role?(role)
- admin?
- developer?
- update_roles!(role_names, source)
- update_login_info!
