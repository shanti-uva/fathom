# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_shanti_session',
    :secret      => 'c3504ee7ee96612efd0c8ed2ebf53ee7de5a6278fab6d63c11ff66984320e012794e4c185d870b7c834812eaa469c27aaa58d51c9e32f130534fc62d2939bc52'
  }

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with 'rake db:sessions:create')
  # config.action_controller.session_store = :active_record_store


  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
  

  config.gem 'mislav-will_paginate', :version => '~> 2.3.8', :lib => 'will_paginate',
    :source => 'http://gems.github.com'

  #RedCloth - converts plain text or textile to HTML (also used by HAML)
  config.gem "RedCloth", :lib=>"redcloth", :version => "~> 3.0.4"

  #Solr-Ruby - Solr connections for Ruby
  config.gem "solr-ruby", :lib => "solr", :version => "~> 0.0.7"
end

require 'will_paginate'

APPLICATION_DOMAIN = 'shanti.virginia.edu'

# Target e-mails for exception handling.
FATHOM_NO_REPLY_ADDRESS = 'shanticontact@collab.itc.virginia.edu'
FATHOM_CONTACT_ADDRESS = FATHOM_NO_REPLY_ADDRESS
ExceptionNotification::Notifier.sender_address = %Q("Application Error" <#{FATHOM_NO_REPLY_ADDRESS}>)
ExceptionNotification::Notifier.exception_recipients = %w(hm5u@virginia.edu fathom@collab.itc.virginia.edu)

ENV['RECAPTCHA_PUBLIC_KEY']  = '6LcK2gkAAAAAANGvhQ8jxCvvlXUulHx1RGUNhrd0'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LcK2gkAAAAAAGgFUYoC4ogH1xwcNKTfHMCwRVLG'