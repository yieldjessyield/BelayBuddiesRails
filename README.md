# README
===============================================================================

# JWT Notes

# using this for Auth https://www.sitepoint.com/introduction-to-using-jwt-in-rails/
# calling the following will render a JWT in response
  
  # curl -X POST -d email="a@a.com" -d password="changeme" http://localhost:3000/auth_user

# Then the user can make requests to #home or wherever with token
  
  #curl --header "Authorization: Bearer eyJ0eXAiOiJKVIOLLCJhbGciOiJIUKDIE9.eyJ1c2VyXDFDtwTrX99KLWERLIGkdoe0e8.kfa0lpYOue62ehubRY4" http://localhost:3000/home

===============================================================================


Notes after running rails generate devise:install

===============================================================================

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

===============================================================================



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
